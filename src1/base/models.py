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
    memberId: int
    part: int
    deleted: bool = False
class Rank(BaseModelModify):
    rank: Optional[int]

class Gang_members(BaseModelModify):
    name: str
    surname: str
    rankID: int
    deleted: bool = False

class Territory(BaseModelModify):
    title: str

class Gangs(BaseModelModify):
    gangs_title: str
    district: int
    
class users(BaseModelModify):
    login: str
    password: str