from fastapi import APIRouter
from base.models import Accounting
#from resolvers import

accounting_router = APIRouter()

@accounting_router.get("/")
def check_accouting(accounting: Accounting):