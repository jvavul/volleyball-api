from fastapi import FastAPI
from fastapi import Request
from mysql import select
from teams import get_teams
from teams import add_team
from teams import delete_team
from players import get_players
from players import add_player
from players import delete_player
from sqlalchemy import delete


app = FastAPI()

@app.get('/get_players')
def api_get_players():
    return get_players()

@app.post('/add_player')
async def api_add_player(request: Request):
    status_code=100
    body = await request.json()
    if(add_player(body) == True):
        status_code=201
    return status_code
    
@app.delete('/delete_player')
async def api_delete_player(request: Request):
    body = await request.json()
    return delete_player(body)

@app.get('/get_teams')
def api_get_teams():
    return get_teams()

@app.post('/add_team')
async def api_add_player(request: Request):
    status_code=100
    body = await request.json()
    if(add_team(body) == True):
        status_code=201
    return status_code
    
@app.delete('/delete_team')
async def api_delete_team(request: Request):
    body = await request.json()
    return delete_team(body)

@app.get('/get_bracket')
def api_get_bracket():
    return {'Bracket': 'Bracket Input'}

@app.post('/build_bracket')
def api_build_bracket():
    return {'New Bracket'}