from typing import Union

import uvicorn
from fastapi import FastAPI
from starlette.responses import HTMLResponse

app = FastAPI()


@app.get("/", response_class=HTMLResponse)
def read_root():
    index = '''
    <html>
        <body>
            <center>
            <h1>Welcome!</h1>
            <p>Hello, nice to meet you :)</p>
            </center>
        </body>
    </html>
    '''
    return index


@app.get("/items/{item_id}")
def read_item(item_id: int, q: Union[str, None] = None):
    return {"item_id": item_id, "q": q}


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=5000)
