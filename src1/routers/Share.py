from fastapi import APIRouter
from base.models import Share
#from resolvers import

share_router = APIRouter()

@share_router.get("/")
def check_share(share: Share):