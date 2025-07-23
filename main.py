import time

from sqlalchemy import create_engine
from sheet_reader import get_sheet_data
from db_loader import load_data_to_db
from config import SYNC_INTERVAL, SHEET_NAMES, DB_URL  # ⬅️ add DB_URL here


from scorer import score_station_answers

def run_sync_loop():
    print("📡 Starting Google Sheets → PostgreSQL sync...")
    while True:
        from sqlalchemy import create_engine, text
        engine = create_engine(DB_URL)
        
        for sheet_name in SHEET_NAMES:
            try:
                print(f"🔄 Syncing: {sheet_name}")
                df = get_sheet_data(sheet_name)
                print(f"✅ Pulled {len(df)} rows from '{sheet_name}'")
                # print(df.columns.tolist())
                # print(df.head())
                if df.empty:
                    print(f"⚠️ No rows found in '{sheet_name}', skipping load.")
                    continue
                # Clean sheet name to use as table name (e.g. no spaces or punctuation)
                table_name = sheet_name.strip().lower().replace(" ", "_").replace("-", "_")
                load_data_to_db(df, table_name=table_name, schema="trivia", unique_key="Submission ID")
                print(f"✅ Data loaded for {table_name}, moving to scoring...")
                score_station_answers(table_name=table_name)
                
            except Exception as e:
                import traceback
                print(f"❌ Failed to sync '{sheet_name}': {e}")
                traceback.print_exc()
        
        with engine.connect() as conn:
            conn.execute(text("UPDATE trivia.app_status SET last_run = NOW() WHERE id = 1"))
            conn.commit()
        print(f"⏳ Waiting {SYNC_INTERVAL} seconds...\n")
        time.sleep(SYNC_INTERVAL)

if __name__ == "__main__":
    run_sync_loop()
