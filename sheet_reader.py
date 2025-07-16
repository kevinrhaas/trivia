import pandas as pd
import gspread
from oauth2client.service_account import ServiceAccountCredentials
from config import GOOGLE_SHEET_NAME, CREDENTIALS_FILE

def get_sheet_data(worksheet_name: str) -> pd.DataFrame:
    scope = [
        "https://spreadsheets.google.com/feeds",
        "https://www.googleapis.com/auth/drive"
    ]
    creds = ServiceAccountCredentials.from_json_keyfile_name(CREDENTIALS_FILE, scope)
    client = gspread.authorize(creds)

    sheet = client.open(GOOGLE_SHEET_NAME).worksheet(worksheet_name)
    records = sheet.get_all_records()
    df = pd.DataFrame(records)
    # Normalize column names: strip text after colon
    df.columns = [col.split(":")[0].strip() for col in df.columns]
    return df
