from db.repositories import News, session_scope
from fastapi import APIRouter

router = APIRouter()


@router.get("/dispute")
async def dispute(text: str, link: str, news_id: int):

    with session_scope() as s:

        news = (s.query(News).filter(News.id == news_id).all())[0]

    file = f"Диспут на новость #{news_id}\n\nРазоблачение:\n{text}\n\nОригинал ({link}):\n{news.title}\n\n{news.content}"

    with open(f"disputes/{news_id}.txt", mode="w") as fp:
        fp.write(file)

    return "Done!"
