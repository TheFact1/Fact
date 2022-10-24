from config.config import ALGORITHM, SECRET_KEY
from db.repositories import Users, session_scope
from fastapi import Depends, HTTPException, status
from fastapi.security import OAuth2PasswordBearer
from jose import JWTError, jwt
from models.domain.profile import User, UserWithPassword


oauth2_scheme = OAuth2PasswordBearer(tokenUrl="token")


def get_user(username: str) -> UserWithPassword:
    with session_scope() as s:

        # TODO: optimize it
        users = (
            s.query(Users)
            .filter(
                Users.username == username,
            )
            .all()
        )

        if users:
            return UserWithPassword.from_orm(users[0])


async def get_current_user(token: str = Depends(oauth2_scheme)) -> UserWithPassword:

    credentials_exception = HTTPException(
        status_code=status.HTTP_401_UNAUTHORIZED,
        detail="Could not validate credentials",
        headers={"WWW-Authenticate": "Bearer"},
    )

    try:
        decoded_user = jwt.decode(token, key=SECRET_KEY, algorithms=[ALGORITHM])
        username = decoded_user.get("username")

        # TODO: maybe remove the following check
        if username is None:
            raise credentials_exception

    except JWTError:
        raise credentials_exception

    user = get_user(username)

    if user is None:
        raise credentials_exception

    return user


async def get_current_active_user(current_user: User = Depends(get_current_user)):
    if current_user.disabled:
        raise HTTPException(status_code=400, detail="Inactive user")
    return current_user
