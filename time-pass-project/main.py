import random
from fastapi import FastAPI
import sqlite3
import requests

app = FastAPI()
DB = "memes.db"

# Database setup
def setup_db():
    conn = sqlite3.connect(DB)
    conn.execute("CREATE TABLE IF NOT EXISTS memes (id INTEGER PRIMARY KEY, title TEXT, url TEXT)")
    conn.close()

@app.on_event("startup")
async def startup_event():
    setup_db()

@app.get("/memes")
async def generate_meme():
    # fetch memes from the database
    conn = sqlite3.connect(DB)
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM memes")
    memes = cursor.fetchall()
    conn.close()

    return {"memes": memes}

def generate_memes_by_ai(n):
    memes = []
    response = requests.get("https://api.imgflip.com/get_memes")
    data = response.json()
    all_memes = data["data"]["memes"]

    # Select `n` random memes
    for _ in range(n):
        random_meme = random.choice(all_memes)
        memes.append({"title": random_meme["name"], "url": random_meme["url"]})
    
    return memes


@app.get("/seed")
async def seed_memes():
    memes = generate_memes_by_ai(32)

    # Insert generated memes into the database
    conn = sqlite3.connect(DB)
    cursor = conn.cursor()
    for meme in memes:
        cursor.execute("INSERT INTO memes (title, url) VALUES (?, ?)", (meme["title"], meme["url"]))
    conn.commit()
    conn.close()

    return memes