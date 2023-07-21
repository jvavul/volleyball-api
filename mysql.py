from sqlalchemy import create_engine, text, Table, Column, Integer, String, MetaData

sql_database_url="mysql://root:@localhost:3306/volleyball"

engine = create_engine(sql_database_url, isolation_level="AUTOCOMMIT")


def get_engine():
    return engine

def select(sql):
    with get_engine().connect() as conn:
        return conn.execute(text(sql))