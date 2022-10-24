from dependencies.user import get_user
from fastapi import APIRouter, HTTPException

from models.domain.profile import UserWithPassword

router = APIRouter()


# TODO: validate output type
@router.get("/profile/{username}")
async def read_users_profiles(username: str) -> UserWithPassword:
    user = get_user(username)
    if not user:
        raise HTTPException(status_code=404, detail="User not found")
    return user
