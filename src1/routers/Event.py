import fastapi
from base.models import Event
from resolvers.Accounting import create_event, get_event, get_all_events, update_event, delete_event

event_router = fastapi.APIRouter(prefix="/event",tags=["Event"])


@event_router.get("/")
def start_page():
    return""

@event_router.post("/new/")
def new_event(event: Event):
    return create_event(event)

@event_router.get("/get/")
def search_all_events():
    return get_all_events()

@event_router.get("/get/{event_id}")
def search_event(event_id: id):
    return get_event(event_id)

@event_router.put("/update/{event_id}")
def upd_event(event_id: int, new_data: Event):
    return update_event(event_id, new_data)


@event_router.delete("/delete/{event_id}")
def del_event(event_id: int):
    return delete_event(event_id)