from fastapi import FastAPI
from fastapi.responses import FileResponse
from fastapi.staticfiles import StaticFiles
from sqlalchemy import create_engine, text
from config import DB_URL

app = FastAPI()
engine = create_engine(DB_URL)

# Serve static HTML + CSS
app.mount("/static", StaticFiles(directory="static"), name="static-v2")

@app.get("/")
def get_index():
    return FileResponse("static/index-v2.html")

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
                tm.team_name,
                tm.station_num
            FROM scoring_results sr
            JOIN (
                SELECT '1' as station_num, "Submission ID" AS submission_id, "Team Name" AS team_name FROM station1_filmedinchicago
                UNION
                SELECT '2' as station_num, "Submission ID", "Team Name" FROM station2_chicagohistory
                UNION
                SELECT '3' as station_num, "Submission ID", "Team Name" FROM station3_damare
                UNION 
                SELECT '4' as station_num, "Submission ID", "Team Name" FROM station4_signs
                UNION
                SELECT  '5' as station_num, "Submission ID", "Team Name" FROM station5_oddsandends
                UNION
                SELECT  '6' as station_num, "Submission ID", "Team Name" FROM station6_musicvenues
                -- add more as needed
            ) tm ON sr.submission_id = tm.submission_id
        """)).fetchall()

        # 👇 INSERT HERE: Pull scoring metadata to calculate max_points per station
        metadata_rows = conn.execute(text("""
            SELECT station, question, score_type, max_points
            FROM question_metadata
        """)).fetchall()

        from collections import defaultdict
        station_max_points = defaultdict(int)

        for row in metadata_rows:
            station = row.station
            score_type = row.score_type or 'S'
            if score_type == 'P':
                station_max_points[station] += row.max_points or 0
            else:
                station_max_points[station] += 1



        # Group by team and station
        leaderboard = {}
        for row in station_scores:
            team = row.team_name
            station = row.station
        
            score = float(row.score or 0.0)            

            if team not in leaderboard:
                leaderboard[team] = {"total_score": 0.0, "stations": {}}

            if station not in leaderboard[team]["stations"]:
                leaderboard[team]["stations"][station] = 0.0

        
            leaderboard[team]["stations"][station] += score
            leaderboard[team]["total_score"] += score

        station_number_map = {
            'station1_filmedinchicago': 1,
            'station2_chicagohistory': 2,
            'station3_damare': 3,
            'station4_signs': 4,
            'station5_oddsandends': 5,
            'station6_musicvenues': 6,
        }


        result = []
        for team, data in leaderboard.items():
            result.append({
                "name": team,
                "total_score": data["total_score"],
                "stations": [
                    {
                        "station": station,
                        "score": score,
                        "status": "complete",
                        "station_num": station_number_map.get(station, None),
                        "max_points": station_max_points.get(station, 10)  # fallback to 10 if undefined
                    }
                    for station, score in data["stations"].items()
                ]
            })

        # Sort by score descending
        result.sort(key=lambda x: x["total_score"], reverse=True)
        return result
