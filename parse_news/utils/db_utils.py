import sqlalchemy as sa
from db import session_scope
from db.news import News
from datetime import datetime

def no_link(News,link):
    with session_scope() as s:
        link_exist = (
            s.query(News)
            .filter(
                News.link == link,
            )
            .first()
            )
    if link_exist==None:
        return True
    else:
        return False

def print_meta(capsula):
    print("type(news_capsule)", type(capsula))
    print("\n")
    print("capsula.link: ", capsula.link, "\n")
    print("capsula.title", capsula.title, "\n")
    print("capsula.article_text", capsula.article_text, "\n")
    print("capsula.image_link", capsula.image_link, "\n")
    print("capsula.category", capsula.category, "\n")
    print("capsula.dtime", capsula.dtime, "\n")
    print("\n \n \n")

# TODO REAL dataime created_on
def insert_capsula(capsula):
    with session_scope() as s:
        query = sa.insert(News).values(
            platform_id=1,
            link=capsula.link,
            title=capsula.title,
            content=capsula.article_text,
            image=capsula.image_link,
            category="Bitcoin",
            created_on=datetime.now(),  # capsula.unix_time
        )
        s.execute(query)