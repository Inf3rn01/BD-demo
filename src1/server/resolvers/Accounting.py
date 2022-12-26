from server.base.base_gangs import base_worker
from server.base.models import Accounting


def create_accounting(accounting: Accounting):
    return base_worker.execute(query="INSERT INTO Accounting(eventID, income, costs) VALUES (?, ?, ?) RETURNING id",
                               args=(accounting.eventID,accounting.income,accounting.costs,))


def get_accounting(accounting_id: int):
    return base_worker.execute(query="SELECT id, eventID, income, costs FROM Accounting WHERE id = ?",
                               args=(accounting_id,))


def get_all_accountings():
    return base_worker.execute(query="SELECT id, eventID, income, costs FROM Accounting",
                               many=True)


def update_accounting(accounting_id: int, new_data: Accounting):
    return base_worker.execute(query="UPDATE accounting SET eventID=?, income=?, costs=? WHERE id=?",
                               args=(new_data.eventID,new_data.income,new_data.costs, accounting_id))


def delete_accounting(accounting_id: int):
    return base_worker.execute(query="DELETE FROM Accounting WHERE id=? ",
                               args=(accounting_id,))