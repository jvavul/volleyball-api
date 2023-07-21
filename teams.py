from mysql import select, get_engine
from sqlalchemy import text
from fastapi import Request


def get_teams():
    #return all teams from database
    response = []
    results = select("SELECT id, name FROM teams")
    for team in results:
        response.append({"id": team.id, "name": team.name})
    return response

def add_team(body: str):
    #add a team to database
    name = body.get("name")
    player1_id = body.get("player1_id")
    player2_id = body.get("player2_id")
    with get_engine().connect() as conn:
        conn.execute(text("INSERT INTO teams (name, player1_id, player2_id) VALUES (:name, :player1_id, :player2_id)"), {"name": name, "player1_id": player1_id, "player2_id": player2_id})
        return True

def delete_team(body: int):
    # remove player from database
    id = body.get("id")
    with get_engine().connect() as conn:
        conn.execute(text("DELETE FROM teams WHERE id = :id"), {"id": id})