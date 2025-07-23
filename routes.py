# routes.py
from flask import Blueprint, request, jsonify
from sqlalchemy import create_engine, text
from config import DB_URL

bp = Blueprint('api', __name__)
engine = create_engine(DB_URL)

@bp.route('/api/teams')
def get_teams():
    with engine.connect() as conn:
        union_sql = """
            SELECT DISTINCT "Team Name" FROM trivia.station1_filmedinchicago
            UNION
            SELECT DISTINCT "Team Name" FROM trivia.station2_chicagohistory
            UNION
            SELECT DISTINCT "Team Name" FROM trivia.station3_damare
            UNION
            SELECT DISTINCT "Team Name" FROM trivia.station4_signs
            UNION
            SELECT DISTINCT "Team Name" FROM trivia.station5_oddsandends
            UNION
            SELECT DISTINCT "Team Name" FROM trivia.station6_musicvenues
        """
        result = conn.execute(text(union_sql))
        teams = sorted({row[0] for row in result if row[0]})
    return jsonify(teams)


@bp.route('/api/team_responses')
def get_team_responses():
    team = request.args.get("team")
    with engine.connect() as conn:
        submission_rows = conn.execute(text("""
            SELECT 'station1_filmedinchicago' AS station, "Submission ID" FROM trivia.station1_filmedinchicago WHERE "Team Name" = :team
            UNION
            SELECT 'station2_chicagohistory', "Submission ID" FROM trivia.station2_chicagohistory WHERE "Team Name" = :team
            UNION
            SELECT 'station3_damare', "Submission ID" FROM trivia.station3_damare WHERE "Team Name" = :team
            UNION
            SELECT 'station4_signs', "Submission ID" FROM trivia.station4_signs WHERE "Team Name" = :team
            UNION
            SELECT 'station5_oddsandends', "Submission ID" FROM trivia.station5_oddsandends WHERE "Team Name" = :team
            UNION
            SELECT 'station6_musicvenues', "Submission ID" FROM trivia.station6_musicvenues WHERE "Team Name" = :team
        """), {"team": team}).fetchall()
        submission_ids = [row[1] for row in submission_rows]

        if not submission_ids:
            return jsonify([])

        result = conn.execute(text("""
            SELECT sr.station, sr.question, qm.question_text, qm.correct_answer, sr.answer, sr.explanation, sr.score
            FROM trivia.scoring_results sr
            JOIN trivia.question_metadata qm
              ON sr.station = qm.station AND sr.question = qm.question
            WHERE sr.submission_id = ANY(:sids)
        """), {"sids": submission_ids})
        rows = result.fetchall()

    def sort_key(row):
        station_num = int(row.station.replace("station", "").split("_")[0])
        question_num = int(row.question[1:]) if row.question.startswith("Q") else 0
        return (station_num, question_num)

    data = sorted(rows, key=sort_key)

    return jsonify([
        {
            "station": r.station,
            "question": r.question,
            "question_text": r.question_text,
            "correct_answer": r.correct_answer,
            "team_answer": r.answer,
            "explanation": r.explanation,
            "score": r.score
        } for r in data
    ])

@bp.route('/api/status')
def get_status():
    with engine.connect() as conn:
        row = conn.execute(text("SELECT last_run, last_score FROM trivia.app_status WHERE id = 1")).fetchone()
    return jsonify({
        "last_scored": row.last_score.isoformat() if row.last_score else None,
        "last_run": row.last_run.isoformat() if row.last_run else None
    })


