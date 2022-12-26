import fastapi
from base.models import Accounting
from resolvers.Accounting import create_accounting, get_accounting, get_all_accountings, update_accounting, delete_accounting

accounting_router = fastapi.APIRouter(prefix="/accounting",tags=["Accounting"])


@accounting_router.get("/")
def start_page():
    return""

@accounting_router.post("/new/")
def new_accounting(accounting: Accounting):
    return create_accounting(accounting)

@accounting_router.get("/get/")
def search_all_accountings():
    return get_all_accountings()

@accounting_router.get("/get/{accounting_id}")
def search_accounting(accounting_id: id):
    return get_accounting(accounting_id)

@accounting_router.put("/update/{accounting_id}")
def upd_accounting(accounting_id: int, new_data: Accounting):
    return update_accounting(accounting_id, new_data)


@accounting_router.delete("/delete/{accounting_id}")
def del_accounting(accounting_id: int):
    return delete_accounting(accounting_id)