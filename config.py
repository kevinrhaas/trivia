from dotenv import load_dotenv
import os

load_dotenv()

CREDENTIALS_FILE = os.getenv("CREDENTIALS_FILE")
OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")

GOOGLE_SHEET_NAME = "2025 Trivia"
SHEET_NAMES = ["station1_filmedinchicago", "station2_chicagohistory", "station3_damare","station4_signs","station5_oddsandends","station6_musicvenues"]
DB_URL = "postgresql+psycopg2://neondb_owner:npg_wXKSAJoWy74G@ep-rapid-poetry-a5zx9nzp-pooler.us-east-2.aws.neon.tech/neondb?sslmode=require"
SYNC_INTERVAL = 10  # seconds
