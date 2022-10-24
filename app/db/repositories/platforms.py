import sqlalchemy as sa

from db.repositories._base import Base


class Platforms(Base):
    __tablename__ = "platforms"

    id = sa.Column(sa.Integer, primary_key=True, autoincrement=True)
    name = sa.Column(sa.Text, unique=True, nullable=False)
    site = sa.Column(sa.Text, unique=True, nullable=False)
    twitter = sa.Column(sa.Text, unique=True, nullable=True)
    linkedin = sa.Column(sa.Text, unique=True, nullable=True)

    def __repr__(self):
        return f"<Platform(id={self.id}, name='{self.name}')>"
