import fastapi
from server.base.models import Users
from server.resolvers.Users import create_user, get_user, get_all_users, update_user, delete_user

user_router = fastapi.APIRouter(prefix="/users", tags=["Users"])


@user_router.get("/")
def start_page():
    return""

@user_router.post("/new/")
def new_user(user: Users):
    return create_user(user)

@user_router.get("/get/")
def search_all_users():
    return get_all_users()

@user_router.get("/get/{user_id}")
def search_user(user_id: int):
    return get_user(user_id)

@user_router.put("/update/{user_id}")
def upd_user(user_id: int, new_data: Users):
    return update_user(user_id, new_data)


@user_router.delete("/delete/{user_id}")
def del_user(user_id: int):
    return delete_user(user_id)