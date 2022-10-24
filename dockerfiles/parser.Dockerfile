FROM python:3.7-slim-buster

WORKDIR /parser

RUN apt-get update && apt-get install -y gcc
RUN apt install openjdk-8-jre
RUN apt install firefox

COPY requirements/geckodriver-v0.31.0-linux64.tar.gz ./geckodriver-v0.31.0-linux64.tar.gz
RUN tar -xf geckodriver-v0.31.0-linux64.tar.gz

RUN  mv geckodriver /usr/local/bin/geckodriver

COPY requirements/parser_requirements.txt ./requirements.txt
RUN pip install --no-cache-dir -U pip setuptools wheel && \
    pip install --no-cache-dir -r requirements.txt

COPY app/ ./app/
CMD FASTAPI_SECRET_KEY=`openssl rand -hex 32` python app/main.py
