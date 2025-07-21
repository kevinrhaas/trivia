import openai
from openai import OpenAI
import pandas as pd
from sqlalchemy import create_engine, text
from config import DB_URL, OPENAI_API_KEY

openai.api_key = OPENAI_API_KEY
engine = create_engine(DB_URL)

def score_station_answers(table_name: str, schema: str = "public"):
    print(f"🧠 Scoring answers for: {table_name}")

    with engine.connect() as conn:
        conn.execute(text("SET search_path TO trivia"))

        # Get metadata for this station
        station = table_name
        meta = conn.execute(text("""
            SELECT question, question_text, correct_answer
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

                question_data = meta_dict.get(q)
                
                print(f"🔍 {station} | {submission_id} | {q} | answer: {answer}")

                if not question_data:
                    print(f"⚠️ No metadata found for question {q}")
                    continue

                result = score_with_openai(
                    question_data.question_text,
                    question_data.correct_answer,
                    answer
                )
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
