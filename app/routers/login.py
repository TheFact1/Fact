from datetime import timedelta
from typing import Dict

from config.config import ACCESS_TOKEN_EXPIRE_MINUTES

# modules
from dependencies.login import authenticate_user, create_access_token
from fastapi import APIRouter, Depends, HTTPException, status
from fastapi.security import OAuth2PasswordRequestForm
from models.scheme.token import Token

router = APIRouter()


@router.post("/api/token", response_model=Token)
async def login_for_access_token(
    form_data: OAuth2PasswordRequestForm = Depends(),
) -> Dict[str, str]:

    user = authenticate_user(form_data.username, form_data.password)

    if not user:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Incorrect username or password",
            headers={"WWW-Authenticate": "Bearer"},
        )

    access_token_expires = timedelta(minutes=ACCESS_TOKEN_EXPIRE_MINUTES)
    access_token = create_access_token(
        username=user.username,
        expires_delta=access_token_expires,
    )

    return {"access_token": access_token, "token_type": "bearer"}
