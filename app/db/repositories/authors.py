import sqlalchemy as sa

from db.repositories._base import Base


class Authors(Base):
    __tablename__ = "authors"

    id = sa.Column(sa.Integer, primary_key=True, autoincrement=True)

    # TODO: sa.Text or sa.VARCHAR
    firstname = sa.Column(sa.Text, unique=False, nullable=False)
    lastname = sa.Column(sa.Text, unique=False, nullable=False)

    def __repr__(self):
        return f"<Author(id={self.id}, name='{self.firstname} {self.lastname}')>"
