from typing import Optional
from pydantic import BaseModel

class BaseModelModify(BaseModel):
    id: Optional[int]

class Event(BaseModelModify):
    title: str
    data: str
    deleted: bool = False

class Accounting(BaseModelModify):
    eventID: int
    income: int
    costs: int
    deleted: bool = False
class Share(BaseModelModify):
    accountingID: int
    memberID: int
    part: int
    deleted: bool = False
class Ranks(BaseModelModify):
    ranks: Optional[int]

class Gang_members(BaseModelModify):
    name: str
    surname: str
    ranksID: int
    deleted: bool = False

class Territory(BaseModelModify):
    title: str

class Gangs(BaseModelModify):
    gangs_title: str
    district: int
    
class Users(BaseModelModify):
    login: str
    password: str
    ranksID: int