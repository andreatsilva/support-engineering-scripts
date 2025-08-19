#!/bin/bash
# Usage: bash rollback.sh

DEPLOY_PATH="/var/www/myapp"
BACKUP_PATH="/var/backups/myapp/last_good"

echo "Rolling back deployment..."
rm -rf $DEPLOY_PATH/*
cp -r $BACKUP_PATH/* $DEPLOY_PATH/
systemctl restart nginx
echo "Rollback complete ✅"
