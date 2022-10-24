import sqlalchemy as sa
from db.repositories._base import Base


class Users(Base):
    __tablename__ = "users"

    id = sa.Column(sa.Integer, primary_key=True, autoincrement=True)
    username = sa.Column(sa.Text, unique=True, nullable=False)
    password = sa.Column(sa.Text, unique=False, nullable=False)
    email = sa.Column(sa.Text, unique=True, nullable=False)
    wallet = sa.Column(sa.Text, unique=True, nullable=False)
    created_on = sa.Column(sa.DateTime(timezone=False), unique=False, nullable=False)
    disabled = sa.Column(sa.Boolean, unique=False, nullable=False)

    def __repr__(self):
        return f"<User(id={self.id}, username='{self.username}')>"
