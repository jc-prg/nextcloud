#!/bin/bash

date=`date +%y%m%d-%H%M`
backup=${DB_BACKUP_CONTAINER:-nextcloud-mariadb-backup}
backupdir=${DIR_DATA_BACKUP:-./data/backup}
datadir=${DIR_DATA_NEXTCLOUD:-./data/nextcloud/data}

# create mysql backup
docker exec -it $backup /run_backup.sh

# create nextcloud configuration backup
rm ../$datadir/backup/config_restore.php  
cp ../$datadir/config/config.php ../$backupdir/config_$date.php  
cp ../$datadir/config/config.php ../$backupdir/config_restore.php  

