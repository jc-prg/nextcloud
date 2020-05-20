#!/bin/sh

echo -n "executed restore_backup at $(date)"
date=`date +%y%m%d-%H%M`

mysql --host=$DB_BACKUP_HOST --port=3306 --password=$DB_BACKUP_PASSWORD < /backup/$DB_BACKUP_NAME\_restore.sql && echo " - successful"

