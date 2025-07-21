from fastapi import FastAPI
from fastapi.responses import FileResponse
from fastapi.staticfiles import StaticFiles
from sqlalchemy import create_engine, text
from config import DB_URL

app = FastAPI()
engine = create_engine(DB_URL)

# Serve static HTML + CSS
app.mount("/static", StaticFiles(directory="static"), name="static")

@app.get("/")
def get_index():
    return FileResponse("static/index.html")

@app.get("/api/leaderboard")
def get_leaderboard():
    with engine.connect() as conn:
        conn.execute(text("SET search_path TO trivia"))
        # Get scores by team + station
        station_scores = conn.execute(text("""
            SELECT
                sr.station,
                sr.submission_id,
                sr.question,
                sr.score,
                tm.team_name
            FROM scoring_results sr
            JOIN (
                SELECT "Submission ID" AS submission_id, "Team Name" AS team_name FROM station1_filmedinchicago
                UNION
                SELECT "Submission ID", "Team Name" FROM station2_chicagohistory
                UNION
                SELECT "Submission ID", "Team Name" FROM station3_damare
                UNION 
                SELECT "Submission ID", "Team Name" FROM station4_signs
                UNION
                SELECT  "Submission ID", "Team Name" FROM station5_oddsandends
                UNION
                SELECT  "Submission ID", "Team Name" FROM station6_musicvenues
                -- add more as needed
            ) tm ON sr.submission_id = tm.submission_id
        """)).fetchall()

        # Group by team and station
        leaderboard = {}
        for row in station_scores:
            team = row.team_name
            station = row.station
            correct = row.score

            if team not in leaderboard:
                leaderboard[team] = {"total_score": 0, "stations": {}}

            if station not in leaderboard[team]["stations"]:
                leaderboard[team]["stations"][station] = 0

            leaderboard[team]["stations"][station] += int(correct)

            if correct:
                leaderboard[team]["total_score"] += 1

        # Convert to JSON structure
        result = []
        for team, data in leaderboard.items():
            result.append({
                "name": team,
                "total_score": data["total_score"],
                "stations": [
                    {"station": station, "score": score, "status": "complete"}
                    for station, score in data["stations"].items()
                ]
            })

        # Sort by score descending
        result.sort(key=lambda x: x["total_score"], reverse=True)
        return result
