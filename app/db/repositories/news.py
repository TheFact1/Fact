import sqlalchemy as sa
from db.repositories._base import Base


class News(Base):
    __tablename__ = "news"

    id = sa.Column(sa.Integer, primary_key=True, autoincrement=True)
    platform_id = sa.Column(
        sa.Integer, sa.ForeignKey("platforms.id"), unique=False, nullable=False
    )
    author_id = sa.Column(
        sa.Integer, sa.ForeignKey("authors.id"), unique=False, nullable=True
    )
    link = sa.Column(sa.Text, unique=True, nullable=False)
    title = sa.Column(sa.Text, unique=False, nullable=False)
    content = sa.Column(sa.Text, unique=False, nullable=True)
    image = sa.Column(sa.Text, unique=False, nullable=True)
    category = sa.Column(sa.Text, unique=False, nullable=False)
    created_on = sa.Column(sa.DateTime(timezone=False), unique=False, nullable=False)

    def __repr__(self):
        return f"<News(id={self.id}, title='{self.title}')>"

    def as_dict(self):
        return {c.name: getattr(self, c.name) for c in self.__table__.columns}

    # TODO: fix it
    def as_json(self):
        result = self.as_dict()
        result["created_on"] = str(result["created_on"])
        return result
