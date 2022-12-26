import fastapi
from server.base.models import Gang_members
from server.resolvers.Gang_members import create_Gang_member, get_Gang_member, get_all_Gang_members, update_Gang_member, delete_Gang_member

gang_members_router = fastapi.APIRouter(prefix="/gang_members",tags=["Gang_members"])


@gang_members_router.get("/")
def start_page():
    return""

@gang_members_router.post("/new/")
def new_gang_member(gang_member: Gang_members):
    return create_Gang_member(gang_member)

@gang_members_router.get("/get/")
def search_all_Gang_members():
    return get_all_Gang_members()

@gang_members_router.get("/get/{gang_member_id}")
def search_gang_member(gang_member_id: int):
    return get_Gang_member(gang_member_id)

@gang_members_router.put("/update/{gang_member_id}")
def upd_gang_member(gang_member_id: int, new_data: Gang_members):
    return update_Gang_member(gang_member_id, new_data)


@gang_members_router.delete("/delete/{gang_member_id}")
def del_gang_member(gang_member_id: int):
    return delete_Gang_member(gang_member_id)