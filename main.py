from fastapi import FastAPI
from model import Item

app = FastAPI()

@app.post("/items")
async def create_item(item: Item):
    with open('data.txt', 'a') as f:
        f.write(str(item) + '\n')
    return item

@app.get("/items")
async def get_items():
    text = open('data.txt','r').read()
    return text

