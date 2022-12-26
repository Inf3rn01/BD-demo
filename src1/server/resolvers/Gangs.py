from server.base.base_gangs import base_worker
from server.base.models import Gangs


def create_Gang(gang: Gangs):
    return base_worker.execute(query="INSERT INTO Gangs(gangs_title, district) VALUES (?, ?) RETURNING id",
                               args=(gang.gangs_title, gang.district,))


def get_Gang(gang_id: int):
    return base_worker.execute(query="SELECT id, gangs_title, district FROM Gangs WHERE id = ?",
                               args=(gang_id,))


def get_all_Gangs():
    return base_worker.execute(query="SELECT id, gangs_title, district FROM Gangs",
                               many=True)


def update_Gang(gang_id: int, new_data: Gangs):
    return base_worker.execute(query="UPDATE Gangs SET gangs_title=?, district=? WHERE id=?",
                               args=(new_data.gangs_title,new_data.district, gang_id))


def delete_Gang(gang_id: int):
    return base_worker.execute(query="DELETE FROM Gangs WHERE id=?",
                               args=(gang_id,))