from fastapi import APIRouter
from base.models import Ranks
#from resolvers import

rank_router = APIRouter()

@rank_router.post("/")
def create_rank(rank: Ranks):
    return f'Rank: {BaseWorker.create_base(rank.dict())}

@rank_router.get("/")
def check_rank(rank: Ranks):
    rank_id = rank
    if rank_id:
        return rank_id
    else:
        return {"code": 404, "message": "page not found", "rank_id": None}


@rank_router.put("/rank")
    def upd_rank(rank: Ranks):



@rank_router.delete("/rank")
def delete_rank(rank: Ranks):
