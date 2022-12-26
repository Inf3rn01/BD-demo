import fastapi
from server.base.models import Gangs
from server.resolvers.Gangs import create_Gang, get_Gang, get_all_Gangs, update_Gang, delete_Gang

gang_router = fastapi.APIRouter(prefix="/gangs", tags=["Gangs"])


@gang_router.get("/")
def start_page():
    return""

@gang_router.post("/new/")
def new_gang(gang: Gangs):
    return create_Gang(gang)

@gang_router.get("/get/")
def search_all_gangs():
    return get_all_Gangs()

@gang_router.get("/get/{gang_id}")
def search_gang(gang_id: int):
    return get_Gang(gang_id)

@gang_router.put("/update/{gang_id}")
def upd_gang(gang_id: int, new_data: Gangs):
    return update_Gang(gang_id, new_data)


@gang_router.delete("/delete/{gang_id}")
def del_gang(gang_id: int):
    return delete_Gang(gang_id)