#!/bin/bash

date=`date +%y%m%d-%H%M`

# create mysql backup
docker exec -it nextcloud-mariadb-backup /run_backup.sh

# create nextcloud configuration backup
rm ../data/nextcloud/backup/config_restore.php  
cp ../data/nextcloud/config/config.php ../data/backup/config_$data.php  
cp ../data/nextcloud/config/config.php ../data/backup/config_restore.php  

