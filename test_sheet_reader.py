from sheet_reader import get_sheet_data
from db_loader import load_data_to_db

df = get_sheet_data()
print("✅ Sheet data pulled:")
print(df.head())

load_data_to_db(df, table_name="scores", schema="public")  # change schema if needed
