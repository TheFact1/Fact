from datetime import datetime

from pydantic import BaseModel


class User(BaseModel):
    id: int
    username: str
    email: str
    wallet: str
    created_on: datetime
    disabled: bool
    class Config:
        orm_mode = True


class UserWithPassword(User):
    password: str
