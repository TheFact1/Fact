FROM python:3.7-slim-buster

WORKDIR /denews

RUN apt-get update && apt-get install -y gcc

COPY requirements/backend_requirements.txt ./requirements.txt
RUN pip install --no-cache-dir -U pip setuptools wheel && \
    pip install --no-cache-dir -r requirements.txt

COPY app/ ./app/
CMD FASTAPI_SECRET_KEY=`openssl rand -hex 32` python app/main.py
