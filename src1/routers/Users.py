from fastapi import APIRouter
from base.models import users
#from resolvers import

user_router = APIRouter()


@user_router.get('/')
def not_login():
    return {"Message": "Login in system"}


@user_router.get('/login')
def check_login(user: users):
    position_id = check_login_1(user)
    if position_id:
        return {"code": 200, "message": "Login correct", "position_id": position_id}
    else:
        return {"code": 401, "message": "Login incorrect, try again", "position_id": None}