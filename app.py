from fastapi import FastAPI
import uvicorn

app = FastAPI()


@app.get("/")
def entry():
    return "app is running"


if __name__ == "__main__":
    uvicorn.run("app:app")
