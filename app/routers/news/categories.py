import json

from db.repositories import News, session_scope
from fastapi import APIRouter
from sqlalchemy import func

router = APIRouter()


# TODO: add categories
@router.get("/categories/{category}")
async def categories(category: str):

    with session_scope() as s:

        if category == "all":
            news = s.query(News).order_by(News.created_on).all()

        else:
            news = (
                s.query(News)
                .filter(func.lower(News.category) == category)
                .order_by(News.created_on)
                .all()
            )

    result = []
    for n in news:
        n = n.as_json()

        # TODO: remove hardcode
        n["content"] = " ".join(n["content"].split(" ")[:30])
        result.append(n)

    return json.dumps(result)
