import uvicorn
from fastapi import FastAPI
from routers.api import router as api_router
from fastapi.middleware.cors import CORSMiddleware


app = FastAPI(title="DeNews_app", docs_url="/api/docs", openapi_url="/api")

# TODO delete CORS policy for security reliability
origins = [
    "http://localhost.tiangolo.com",
    "https://localhost.tiangolo.com",
    "http://localhost",
    "http://localhost:8080",
    "http://localhost:3000",
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


app.include_router(api_router)


if __name__ == "__main__":
    uvicorn.run(
        "main:app",
        host="0.0.0.0",
        port=5000,
        workers=2,
        reload=True,
        debug=True,
    )
