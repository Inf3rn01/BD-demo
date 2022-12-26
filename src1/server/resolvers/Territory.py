from server.base.base_gangs import base_worker
from server.base.models import Territory


def create_territory(territory: Territory):
    return base_worker.execute(query="INSERT INTO Territory(title) VALUES (?) RETURNING id",
                               args=(territory.title,))


def get_territory(territory_id: int):
    return base_worker.execute(query="SELECT id, title FROM Territory WHERE id = ?",
                               args=(territory_id,))


def get_all_territories():
    return base_worker.execute(query="SELECT id, title FROM Territory",
                               many=True)


def update_territory(territory_id: int, new_data: Territory):
    return base_worker.execute(query="UPDATE Territory SET title=? WHERE id=?",
                               args=(new_data.title, territory_id))


def delete_territory(territory_id: int):
    return base_worker.execute(query="DELETE FROM Territory WHERE id=? ",
                               args=(territory_id,))