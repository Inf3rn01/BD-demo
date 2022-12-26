from server.base.base_gangs import base_worker
from server.router import routers
import fastapi

base_worker.create_base('../sql1/banda.sql')


app = fastapi.APIRouter()

[app.include_router(router) for router in routers]