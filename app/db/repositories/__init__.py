from config.config import (
    DBNAME_POSTGRESQL,
    DRIVER_POSTGRESQL,
    IP_POSTGRESQL,
    PASSWORD_POSTGRESQL,
    PORT_POSTGRESQL,
    USERNAME_POSTGRESQL,
)
from db.repositories._base import Base
from db.repositories.authors import Authors
from db.repositories.interactions import Interactions
from db.repositories.news import News
from db.repositories.platforms import Platforms
from db.repositories.users import Users

__all__ = [
    "Base",
    "Authors",
    "Interactions",
    "News",
    "Platforms",
    "Users",
]


from contextlib import contextmanager

import sqlalchemy as sa
from sqlalchemy.orm import sessionmaker

# TODO: validate sslmode=disable
# TODO: remove hardcode
main_engine = sa.create_engine(
    f"{DRIVER_POSTGRESQL}://{USERNAME_POSTGRESQL}:{PASSWORD_POSTGRESQL}@{IP_POSTGRESQL}:{PORT_POSTGRESQL}/{DBNAME_POSTGRESQL}",
    # echo=True,
)

DBSession = sessionmaker(
    binds={
        Base: main_engine,
    },
    expire_on_commit=False,
)


@contextmanager
def session_scope():
    """
    Provides a transactional scope around a series of operations.
    """

    session = DBSession()
    try:
        yield session
        session.commit()
    except Exception as e:
        session.rollback()
        raise e
    finally:
        session.close()
