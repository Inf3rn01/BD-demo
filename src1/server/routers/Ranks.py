import fastapi
from server.base.models import Ranks
from server.resolvers.Ranks import create_rank, get_rank, get_all_ranks, update_rank, delete_rank

rank_router = fastapi.APIRouter(prefix="/ranks", tags=["Ranks"])


@rank_router.get("/")
def start_page():
    return""

@rank_router.post("/new/")
def new_rank(rank: Ranks):
    res = create_rank(rank)
    return res

@rank_router.get("/get/")
def search_all_ranks():
    return get_all_ranks()

@rank_router.get("/get/{rank_id}")
def search_rank(rank_id: int):
    return get_rank(rank_id)

@rank_router.put("/update/{rank_id}")
def upd_gang(rank_id: int, new_data: Ranks):
    res = update_rank(rank_id, new_data)
    return res


@rank_router.delete("/delete/{rank_id}")
def del_gang(rank_id: int):
    return delete_rank(rank_id)