#!/bin/sh

echo -n "executed run_backup at $(date)"
date=`date +%y%m%d-%H%M`

mysqldump --host=$DB_BACKUP_HOST --port=3306 --password=$DB_BACKUP_PASSWORD -B $DB_BACKUP_DATABASE > /backup/$DB_BACKUP_NAME\_$date.sql && echo " - successful"
cp /backup/$DB_BACKUP_NAME\_$date.sql /backup/$DB_BACKUP_NAME\_restore.sql && echo " - successful"
cp /backup/$DB_BACKUP_NAME\_$date.sql /backup-latest/$DB_BACKUP_NAME\_latest.sql && echo " - successful"

