from mysql import select, get_engine
from sqlalchemy import text
from fastapi import Request


def get_players():
    #return all players from database
    response = []
    results = select("SELECT id, name FROM players")
    for players in results:
        response.append({"id": players.id, "name": players.name})
    return response

def add_player(body: str):
    # add player to database
    name = body.get("name")
    with get_engine().connect() as conn:
        conn.execute(text("INSERT INTO players (name) VALUES (:name)"), {"name": name})
        return True

def delete_player(body: int):
    # remove player from database
    id = body.get("id")
    with get_engine().connect() as conn:
        conn.execute(text("DELETE FROM players WHERE id = :id"), {"id": id}),
        conn.execute(text("DELETE FROM teams WHERE player1_id = :id"), {"id": id}),
        conn.execute(text("DELETE FROM teams WHERE player2_id = :id"), {"id": id})