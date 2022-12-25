from base.base_gangs import base_worker
from base.models import Gang_members


def create_Gang_member(gangmember: Gang_members):
    return base_worker.execute(query="INSERT INTO Gang_members(name, surname, ranksID) VALUES (?, ?, ?) RETURNING id",
                               args=(gangmember.name,gangmember.surname,gangmember.ranksID,))


def get_Gang_member(gangmember_id: int):
    return base_worker.execute(query="SELECT id, name, surname, ranksID FROM Gang_members WHERE id = ?",
                               args=(gangmember_id,))


def get_all_Gang_members():
    return base_worker.execute(query="SELECT id, name, surname, ranksID FROM Gang_members",
                               many=True)


def update_Gang_member(gangmember_id: int, new_data: Gang_members):
    return base_worker.execute(query="UPDATE Gang_members SET name=?, surname=?, ranksID=? WHERE id=?",
                               args=(new_data.name,new_data.surname,new_data.ranksID, gangmember_id))


def delete_Gang_member(gangmember_id: int):
    return base_worker.execute(query="DELETE FROM Gang_members WHERE id=?",
                               args=(gangmember_id,))