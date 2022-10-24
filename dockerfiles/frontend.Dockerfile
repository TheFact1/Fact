FROM node:18-buster-slim

COPY frontend/ ./frontend/
WORKDIR /frontend/de-news

RUN npm i --force

CMD npm run dev
