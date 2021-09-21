#!/bin/bash
backup=${DB_BACKUP_CONTAINER:-nextcloud-mariadb-backup}

docker exec -it $backup /restore_backup.sh
