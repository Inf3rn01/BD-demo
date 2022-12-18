from sql_base.base_gangs import base_worker
if not base_worker.check_base():
    base_worker.create_base('../sql_base/banda.sql')
    base_worker.create_base('../sql_base/fill.sql')