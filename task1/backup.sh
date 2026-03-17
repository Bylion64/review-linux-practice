#!/bin/bash
# backup.sh — скрипт резервного копирования (версия с ошибками)
 
SOURCE=/home/user/documents
DEST=/backup
DATE=`date +%Y-%m-%d`
 
if [ ! -d $DEST ]; then
    mkdir $DEST
fi
 
cp -r $SOURCE $DEST/backup_$DATE
 
if [ $? == 0 ]; then
    echo "Backup successful"
else
    echo "Backup failed"
    exit 1
fi
 
FILES=`ls $DEST`
for f in $FILES
do
    echo $f
done

