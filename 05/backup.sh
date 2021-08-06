#!/bin/bash
set -ueo pipefail

if [ -n "$BACKUP_DIR" ]; then
    true
else
    BACKUP_DIR=~/backup
fi

[ -d $BACKUP_DIR ] || mkdir $BACKUP_DIR

for arg; do
    if [ -f "$arg" ]; then
	cp "$(realpath "$arg")" "$BACKUP_DIR"
	DATE_TIME=$(date '+%Y-%m-%d_%H-%M-%S_')
	FIXED_PATH=$(realpath "$arg" | tr "/" "~")
	mv "$BACKUP_DIR/$(basename "$arg")" "$BACKUP_DIR/$DATE_TIME$FIXED_PATH"
	echo "$BACKUP_DIR/$DATE_TIME$FIXED_PATH"
    else
	cp -R "$(realpath "$arg")" "$BACKUP_DIR"
	DATE_TIME=$(date '+%Y-%m-%d_%H-%M-%S_')
	FIXED_PATH=$(realpath "$arg" | tr "/" "~")
	mv "$BACKUP_DIR/$(basename "$arg")" "$BACKUP_DIR/$DATE_TIME$FIXED_PATH"
	echo "$BACKUP_DIR/$DATE_TIME$FIXED_PATH"
    fi
done
