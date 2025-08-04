from dotenv import load_dotenv
import os

load_dotenv()

# Configuration for the trivia application with environment variables (passwords, API keys, etc.)
CREDENTIALS_FILE = os.getenv("CREDENTIALS_FILE")
OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")
DB_URL = os.getenv("DB_URL")


# Configuration for the Google Sheets API and other trivia settings
GOOGLE_SHEET_NAME = "2025 Trivia"
SHEET_NAMES = ["station1_filmedinchicago", "station2_chicagohistory", "station3_damare","station4_signs","station5_oddsandends","station6_musicvenues"]
SYNC_INTERVAL = 30  # seconds
