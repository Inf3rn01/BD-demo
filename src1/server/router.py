from server.routers.Accounting import accounting_router
from server.routers.Event import event_router
from server.routers.Gang import gang_router
from server.routers.Gang_members import gang_members_router
from server.routers.Ranks import rank_router
from server.routers.Share import share_router
from server.routers.Territory import territory_router
from server.routers.Users import user_router

routers = (accounting_router, event_router, gang_router,gang_members_router,rank_router,share_router,territory_router, user_router)