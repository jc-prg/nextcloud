#!/bin/sh

echo -n "executed run_backup at $(date)"
date=`date +%y%m%d-%H%M`

mysqldump -A -h $DB_BACKUP_HOST --password=$DB_BACKUP_PASSWORD > /backup/$DB_BACKUP_NAME\_$date.sql && echo " - successful"
mysqldump -A -h $DB_BACKUP_HOST --password=$DB_BACKUP_PASSWORD > /backup-latest/$DB_BACKUP_NAME\_latest.sql && echo " - successful"

