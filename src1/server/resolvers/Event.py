from server.base.base_gangs import base_worker
from server.base.models import Event


def create_event(event: Event):
    return base_worker.execute(query="INSERT INTO Event(title,data) VALUES (?,?) RETURNING id",
                               args=(event.title, event.data,))[0]


def get_event(event_id: int):
    return base_worker.execute(query="SELECT id, title, data FROM Event WHERE id = ?",
                               args=(event_id,))


def get_all_events():
    return base_worker.execute(query="SELECT id, title, data FROM Event",
                               many=True)


def update_event(event_id: int, new_data: Event):
    return base_worker.execute(query="UPDATE Event SET title=?, data=? WHERE id=?",
                               args=(new_data.title, new_data.data, event_id))


def delete_event(event_id: int):
    return base_worker.execute(query="DELETE FROM Event WHERE id=? ",
                               args=(event_id,))