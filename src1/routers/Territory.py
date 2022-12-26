import fastapi
from base.models import Territory
from resolvers.Territory import create_territory, get_territory, get_all_territories, update_territory, delete_territory

territory_router = fastapi.APIRouter(prefix="/territory", tags=["Territory"])


@territory_router.get("/")
def start_page():
    return""

@territory_router.post("/new/")
def new_territory(territory: Territory):
    return create_territory(territory)

@territory_router.get("/get/")
def search_all_territories():
    return get_all_territories()

@territory_router.get("/get/{territory_id}")
def search_territory(territory_id: int):
    return get_territory(territory_id)

@territory_router.put("/update/{territory_id}")
def upd_territory(territory_id: int, new_data: Territory):
    return update_territory(territory_id, new_data)


@territory_router.delete("/delete/{territory_id}")
def del_territory(territory_id: int):
    return delete_territory(territory_id)