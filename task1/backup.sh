#!/bin/bash
# backup.sh — скрипт резервного копирования (исправленная версия)
set -euo pipefail   # строгий режим: ошибка = выход
 
SOURCE="/home/user/documents"
DEST="/backup"
DATE=$(date +%Y-%m-%d)   # SC2006: используем $() вместо ``
 
# SC2086: все переменные в двойных кавычках
if [ ! -d "$DEST" ]; then
    mkdir -p "$DEST"
fi
 
if cp -r "$SOURCE" "$DEST/backup_$DATE"; then
    echo "Backup successful: $DEST/backup_$DATE"
else
    echo "Backup failed" >&2
    exit 1
fi
 
# SC2045: безопасная итерация через glob вместо ls
for f in "$DEST"/*/; do
    echo "Found backup: $f"
done

