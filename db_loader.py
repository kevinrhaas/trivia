import pandas as pd
from sqlalchemy import create_engine, MetaData, Table, text
from sqlalchemy.dialects.postgresql import insert
from config import DB_URL

def load_data_to_db(df: pd.DataFrame, table_name: str, schema: str = "public", unique_key: str = "Submission ID"):
    """Upserts data into a Postgres table, creating or altering it as needed."""
    engine = create_engine(DB_URL)
    metadata = MetaData(schema=schema)

    with engine.connect() as conn:
        # Ensure schema exists
        conn.execute(text(f"CREATE SCHEMA IF NOT EXISTS {schema}"))

        from sqlalchemy import String, BigInteger, Column

        # Create the table if it doesn't exist
        df.head(0).to_sql(table_name, con=conn, schema=schema, if_exists="replace", index=False)

        # Add unique index if missing
        try:
            conn.execute(text(f'''
                DO $$
                BEGIN
                    IF NOT EXISTS (
                        SELECT 1 FROM pg_indexes
                        WHERE schemaname = :schema AND tablename = :table AND indexname = :index
                    ) THEN
                        EXECUTE format('CREATE UNIQUE INDEX %I ON %I.%I ("Submission ID")', :index, :schema, :table);
                    END IF;
                END;
                $$;
            '''), {
                "schema": schema,
                "table": table_name,
                "index": f"{table_name}_submission_id_idx"
            })
        except Exception as e:
            print(f"⚠️ Index creation failed: {e}")

        # Define table manually from DataFrame columns
        columns = []
        for col in df.columns:
            dtype = BigInteger if col == "Submission ID" else String
            columns.append(Column(col, dtype))

        table = Table(table_name, metadata, *columns, schema=schema)


        # Add new columns as needed
        for col in df.columns:
            if col not in table.c:
                print(f"➕ Adding column: {col}")
                conn.execute(text(f'ALTER TABLE "{schema}"."{table_name}" ADD COLUMN "{col}" TEXT'))

        # Upsert each row
        for _, row in df.iterrows():
            row_dict = row.to_dict()
            stmt = insert(table).values(row_dict)
            update_dict = {col: row_dict[col] for col in df.columns if col != unique_key}
            stmt = stmt.on_conflict_do_update(
                index_elements=[unique_key],
                set_=update_dict
            )
            conn.execute(stmt)

        conn.commit()
        print(f"✅ Upserted {len(df)} rows into {schema}.{table_name}")
