import fastapi
from base.models import Share
from resolvers.Share import create_share, get_share, get_all_shares, update_share, delete_share

share_router = fastapi.APIRouter(prefix="/share",tags=["Share"])


@share_router.get("/")
def start_page():
    return""

@share_router.post("/new/")
def new_share(share: Share):
    return create_share(share)

@share_router.get("/get/")
def search_all_share():
    return get_all_shares()

@share_router.get("/get/{share_id}")
def search_share(share_id: int):
    return get_share(share_id)

@share_router.put("/update/{share_id}")
def upd_share(share_id: int, new_data: Share):
    return update_share(share_id, new_data)


@share_router.delete("/delete/{share_id}")
def del_share(share_id: int):
    return delete_share(share_id)