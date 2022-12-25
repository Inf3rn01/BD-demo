from base.base_gangs import base_worker
from base.models import Users


def create_user(users: Users):
    return base_worker.execute(query="INSERT INTO Users(login, password, ranksID) VALUES (?, ?, ?) RETURNING id",
                               args=(users.login,users.password,users.ranksID,))


def get_user(users_id: int):
    return base_worker.execute(query="SELECT id, login, password, ranksID FROM Users WHERE id = ?",
                               args=(users_id,))


def get_all_users():
    return base_worker.execute(query="SELECT id, login, password, ranksID FROM Users",
                               many=True)


def update_user(users_id: int, new_data: Users):
    return base_worker.execute(query="UPDATE users SET login=?, password=?, ranksID=? WHERE id=?",
                               args=(new_data.login,new_data.password,new_data.ranksID, users_id))


def delete_user(users_id: int):
    return base_worker.execute(query="DELETE FROM Users WHERE id=? ",
                               args=(users_id,))