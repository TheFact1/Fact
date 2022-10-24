import os

# TODO make convinient import secret key
SECRET_KEY = os.environ["FASTAPI_SECRET_KEY"]  # openssl rand -hex 32
ALGORITHM = "HS256"
ACCESS_TOKEN_EXPIRE_MINUTES = 30

# DB_CREDENTIAL
DRIVER_POSTGRESQL = "postgresql"
USERNAME_POSTGRESQL = "admin"
PASSWORD_POSTGRESQL = "admin"
IP_POSTGRESQL = "postgres"
PORT_POSTGRESQL = 5432
DBNAME_POSTGRESQL = "denews"
