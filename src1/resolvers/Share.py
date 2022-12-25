from base.base_gangs import base_worker
from base.models import Share


def create_share(share: Share):
    return base_worker.execute(query="INSERT INTO Share(accountingID, memberID, part) VALUES (?, ?, ?) RETURNING id",
                               args=(share.accountingID,share.memberID,share.part,))


def get_share(share_id: int):
    return base_worker.execute(query="SELECT id, accountingID, memberID, part FROM Share WHERE id = ?",
                               args=(share_id,))


def get_all_shares():
    return base_worker.execute(query="SELECT id, accountingID, memberID, part FROM Share",
                               many=True)


def update_share(share_id: int, new_data: Share):
    return base_worker.execute(query="UPDATE Share SET accountingID=?, memberID=?, part=? WHERE id=?",
                               args=(new_data.accountingID,new_data.memberID,new_data.part, share_id))


def delete_share(share_id: int):
    return base_worker.execute(query="DELETE FROM Share WHERE id=?",
                               args=(share_id,))