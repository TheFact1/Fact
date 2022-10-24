from datetime import datetime

from pydantic import BaseModel


class News(BaseModel):
    id: int
    username: str
    email: str
    wallet: str
    created_on: datetime
    disabled: bool
    class Config:
        orm_mode = True

