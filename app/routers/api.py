from fastapi import APIRouter
from routers import login
from routers.account import settings_account, user_profile
from routers.news import categories, dispute, favorites, for_you, open_disputes

# TODO: remove comments
router = APIRouter()

# Login
router.include_router(login.router, tags=["login"])  # Login user and get token

# Account
router.include_router(
    settings_account.router, tags=["settings_account"], prefix="/account"
)  # Getting setting page [for authorized users]
router.include_router(
    user_profile.router, tags=["user_profile"], prefix="/account"
)  # Look through         [for any users]

# News
router.include_router(
    for_you.router, tags=["news for_you"], prefix="/news"
)  # News for_you [for authorized users]
router.include_router(
    favorites.router, tags=["news favorites"], prefix="/news"
)  # Look thro    [for authorized users]
router.include_router(
    categories.router, tags=["news categories"], prefix="/news"
)  # Look thro
router.include_router(dispute.router, tags=["news dispute"], prefix="/dispute")
router.include_router(
    open_disputes.router, tags=["news open disputes"], prefix="/open_disputes"
)
