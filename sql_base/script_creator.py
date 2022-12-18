from typing import Optional
from pydantic import BaseModel

class Event(BaseModel):
    id: Optional[int]
    title: str
    data: Optional[str]

class Accounting(BaseModel):
    id: Optional[int]
    event_id: int
    income: int
    costs: int

class Share(BaseModel):
    id: Optional[int]
    accounting_id: int
    member_id: int
    part: int

class Gang_members(BaseModel):
    id: Optional[int]
    name: str
    surname: str
    rank: str

class Territory(BaseModel):
    id: Optional[int]
    title: str

class Gangs(BaseModel):
    id: Optional[int]
    gangs_title: str
    district: int