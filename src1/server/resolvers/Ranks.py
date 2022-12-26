from server.base.base_gangs import base_worker
from server.base.models import Ranks


def create_rank(rank: Ranks):
    return base_worker.execute(query="INSERT INTO Rank(ranks) VALUES (?) RETURNING id",
                               args=(rank.ranks,))


def get_rank(rank_id: int):
    return base_worker.execute(query="SELECT id, ranks FROM Rank WHERE id = ?",
                               args=(rank_id,))


def get_all_ranks():
    return base_worker.execute(query="SELECT id, ranks FROM Rank",
                               many=True)


def update_rank(rank_id: int, new_data: Ranks):
    return base_worker.execute(query="UPDATE Rank SET ranks=? WHERE id=?",
                               args=(new_data.ranks, rank_id))


def delete_rank(rank_id: int):
    return base_worker.execute(query="DELETE FROM Rank WHERE id=? ",
                               args=(rank_id,))