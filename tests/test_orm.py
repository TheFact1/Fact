import os
import sys

# TODO: fix it
os.environ["FASTAPI_SECRET_KEY"] = "secret"
sys.path.append("app")


from db.repositories import (  # noqa E402
    Authors,
    Interactions,
    News,
    Platforms,
    Users,
    session_scope,
)

if __name__ == "__main__":
    with session_scope() as s:
        users = s.query(Users).limit(2).all()
        print(f"Users: {users}\n")

        platforms = s.query(Platforms).limit(2).all()
        print(f"Platforms: {platforms}\n")

        authors = s.query(Authors).limit(2).all()
        print(f"Authors: {authors}\n")

        news = s.query(News).limit(2).all()
        print(f"news: {news}\n")

        interactions = s.query(Interactions).limit(2).all()
        print(f"interactions: {interactions}\n")
