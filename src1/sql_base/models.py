from typing import Optional
from pydantic import BaseModel

class BaseModelModify(BaseModel):
    id: Optional[int]

class Staff(BaseModelModify):
    user_id: Optional[int] = None
    position_id: int
    team_id: int
    surname: str
    name: str
    date_birth: str
    deleted: bool = False