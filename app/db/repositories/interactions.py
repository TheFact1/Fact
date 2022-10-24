import sqlalchemy as sa

from db.repositories._base import Base


class Interactions(Base):
    __tablename__ = "interactions"

    user_id = sa.Column(
        sa.Integer,
        sa.ForeignKey("users.id"),
        primary_key=True,
        unique=False,
        nullable=False,
    )
    news_id = sa.Column(
        sa.Integer,
        sa.ForeignKey("news.id"),
        primary_key=True,
        unique=False,
        nullable=False,
    )
    interaction_on = sa.Column(
        sa.DateTime(timezone=False), unique=False, nullable=False
    )
    likes = sa.Column(sa.Integer, unique=False, nullable=True)
    comment = sa.Column(sa.Text, unique=False, nullable=True)

    def __repr__(self):
        return f"<Interaction(id={self.id}, user_id={self.user_id}, news_id={self.news_id})>"
