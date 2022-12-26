from base.base_gangs import base_worker
from router import routers
import fastapi

base_worker.check_base():
    base_worker.create_base('../base/banda.sql')
    base_worker.create_base('../base/fill.sql')

app = fastapi.APIRouter()

[app.include_router(router) for router in routers]