from base.base_gangs import base_worker
from base.models import Event


def create_event(event: Event):
    return base_worker.execute(query="INSERT INTO Event(title) VALUES (?) RETURNING id",
                               args=(event.title,))


def get_event(event_id: int):
    return base_worker.execute(query="SELECT id, title FROM Event WHERE id = ?",
                               args=(event_id,))


def get_all_events():
    return base_worker.execute(query="SELECT id, title FROM Event",
                               many=True)


def update_event(event_id: int, new_data: Event):
    return base_worker.execute(query="UPDATE Event SET title=? WHERE id=?",
                               args=(new_data.title, event_id))


def delete_event(event_id: int):
    return base_worker.execute(query="DELETE FROM Event WHERE id=? ",
                               args=(event_id,))