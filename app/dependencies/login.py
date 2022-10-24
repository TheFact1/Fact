from datetime import datetime, timedelta
from typing import Union

from config.config import ALGORITHM, SECRET_KEY
from dependencies.user import get_user
from jose import jwt
from models.domain.profile import UserWithPassword
from passlib.context import CryptContext

pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")


def verify_password(plain_password: str, hashed_password: str) -> bool:
    return pwd_context.verify(plain_password, hashed_password)


# TODO: standartize output type
def authenticate_user(username: str, password: str) -> Union[bool, UserWithPassword]:
    user = get_user(username)
    if not user:
        return False
    if not verify_password(password, user.password):
        return False
    return user


# TODO: validate datetime
# TODO: think about caps vars hardcode
def create_access_token(username: str, expires_delta: Union[timedelta, None] = None):
    if expires_delta:
        expire = datetime.utcnow() + expires_delta
    else:
        expire = datetime.utcnow() + timedelta(minutes=15)

    # TODO: add strftime
    to_encode = {"username": username, "expire": str(expire)}
    encoded_jwt = jwt.encode(to_encode, key=SECRET_KEY, algorithm=ALGORITHM)
    return encoded_jwt
