import openai
from openai import OpenAI
import pandas as pd
from sqlalchemy import create_engine, text
from config import DB_URL, OPENAI_API_KEY

openai.api_key = OPENAI_API_KEY
engine = create_engine(DB_URL)

def score_station_answers(table_name: str, schema: str = "trivia"):
    import datetime
    print(f"🕓 Scoring started at {datetime.datetime.now().strftime('%H:%M:%S')}")
    print(f"🧠 Scoring answers for: {table_name}")

    with engine.connect() as conn:
        conn.execute(text("SET search_path TO trivia"))

        # Get metadata for this station
        station = table_name
        meta = conn.execute(text("""
            SELECT question, question_text, correct_answer, score_type, max_points
            FROM question_metadata
            WHERE station = :station
        """), {"station": station}).fetchall()
        meta_dict = {row.question: row for row in meta}




        # Get latest submissions
        df = pd.read_sql_table(table_name, conn, schema=schema)

        for _, row in df.iterrows():
            submission_id = row["Submission ID"]
            for q in [col for col in df.columns if col.startswith("Q")]:
                answer = row.get(q, "").strip()
                if not answer:
                    continue

                if (station, submission_id, q) in already_scored(conn):
                    continue

                # Check if question metadata exists
                question_data = meta_dict.get(q)
                if not question_data:
                    print(f"⚠️ No metadata found for question {q}")
                    continue

                score_type = question_data.score_type or 'S'
                max_points = question_data.max_points or 1

                if score_type == "S":
                    result = score_standard(question_data.question_text, question_data.correct_answer, answer)
                else:
                    result = score_partial(question_data.question_text, question_data.correct_answer, answer, max_points)
                
                print(f"🔍 {station} | {submission_id} | {q} | answer: {answer}")
         
                print(f"✅ Score result: {result}")

                conn.execute(text("""
                    INSERT INTO scoring_results
                    (station, submission_id, question, answer, score, explanation)
                    VALUES (:station, :sid, :question, :answer, :score, :explanation)
                    ON CONFLICT DO NOTHING
                """), {
                    "station": station,
                    "sid": submission_id,
                    "question": q,
                    "answer": answer,
                    "score": result["score"],
                    "explanation": result["explanation"]
                })
                conn.commit()
                conn.execute(text("UPDATE trivia.app_status SET last_score = NOW() WHERE id = 1"))
                conn.commit()



def already_scored(conn):
    rows = conn.execute(text("SELECT station, submission_id, question FROM scoring_results")).fetchall()
    return set((r[0], r[1], r[2]) for r in rows)

def score_with_openai(question_text, correct_answer, submitted_answer):
    prompt = f"""
You are a trivia judge. Here's a question and two answers.

Question: {question_text}

Correct Answer: {correct_answer}

Submitted Answer: {submitted_answer}

Decide if the submitted answer is correct (even if phrased or spelled differently, be generous). Then explain your decision in one brief sentence.

Respond in this format:
Score: Yes or No
Explanation: ...
"""

    client = OpenAI(api_key=OPENAI_API_KEY)
    response = client.chat.completions.create(
        model="gpt-4",
        messages=[{"role": "user", "content": prompt}]
    )
    content = response.choices[0].message.content

    score_line, explanation = content.split("\n", 1)
    score = "yes" in score_line.lower()

    return {"score": score, "explanation": explanation.strip()}

def score_standard(question_text, correct_answer, submitted_answer):
    prompt = f"""
You are a trivia judge. Here's a question and two answers.

Question: {question_text}

Correct Answer: {correct_answer}

Submitted Answer: {submitted_answer}

Decide if the submitted answer is correct (even if phrased or spelled differently, be generous). Then explain your decision in one brief sentence.

Respond in this format:
Score: Yes or No
Explanation: ...
"""
    return parse_openai_response(prompt, binary=True)

def score_partial(question_text, correct_answer, submitted_answer, max_points):
    prompt = f"""
You are an expert trivia scorer. Here's a question and two answers.

Question: {question_text}

Correct Answer (ideal/expert response): {correct_answer}

Submitted Answer: {submitted_answer}

Give a score from 0 to {max_points} based on how close the submitted answer is to the correct one. Be thoughtful and fair. Then explain your decision in one sentence.

Respond in this format:
Score: <number>
Explanation: ...
"""
    return parse_openai_response(prompt, binary=False)

def parse_openai_response(prompt, binary=False):
    client = OpenAI(api_key=OPENAI_API_KEY)
    response = client.chat.completions.create(
        model="gpt-4",
        messages=[{"role": "user", "content": prompt}]
    )
    content = response.choices[0].message.content
    lines = content.strip().split("\n", 1)

    score_line = lines[0]
    explanation = lines[1].strip() if len(lines) > 1 else ""

    if binary:
        score = 1.0 if "yes" in score_line.lower() else 0.0
    else:
        import re
        match = re.search(r"[-+]?\d*\.?\d+", score_line)
        score = float(match.group()) if match else 0

    return {"score": score, "explanation": explanation}
