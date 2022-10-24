from dependencies.user import get_current_active_user
from fastapi import APIRouter, Depends
from models.domain.profile import User

router = APIRouter()


# TODO: validate input type: User or UserWithPassword
# TODO: add for_you
@router.get("/for_you")
async def news_for_you(current_user: User = Depends(get_current_active_user)):
    return f"Acctual set of news for you dear {current_user.username}!"
