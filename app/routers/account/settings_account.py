from dependencies.user import get_current_active_user
from fastapi import APIRouter, Depends
from models.domain.profile import User

router = APIRouter()


@router.get("/settings_account", response_model=User)
async def read_users_me(current_user: User = Depends(get_current_active_user)):
    return current_user
