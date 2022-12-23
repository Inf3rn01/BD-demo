from base.base_gangs import base_worker
if not base_worker.check_base():
    base_worker.create_base('../base/banda.sql')
    base_worker.create_base('../base/fill.sql')