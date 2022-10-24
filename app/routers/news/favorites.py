from dependencies.user import get_current_active_user
from fastapi import APIRouter, Depends
from models.domain.profile import User

router = APIRouter()


# TODO: validate input type: User or UserWithPassword
# TODO: add favorites
@router.get("/favorites")
async def favorites_news(current_user: User = Depends(get_current_active_user)):
    return f"Favorites set of news for you dear {current_user.username}!"
