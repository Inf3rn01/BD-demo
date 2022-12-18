from fastapi import FastAPI
# from routers.users import user_router
# from routers.staff import staff_router
from sql_base import base_gangs
from setting import BASE_PATH


base_gangs.set_base_path(BASE_PATH)

if not base_gangs.check_base():
    base_gangs.create_base('../sql/banda.sql')

# app = FastAPI()
#
#
# app.include_router(staff_router, prefix="/staff")
# app.include_router(user_router, prefix='/users')