from fastapi import APIRouter
from base.models import Event
#from resolvers import

event_router = APIRouter()

@event_router.get("/")
def check_event(event: Event):
    event_id = event
    if event_id:
        return event_id
    else:
        return {"code": 404, "message": "page not found", "rank_id": None}

@event_router.post("/rank")
def create_rank(event: Event):
