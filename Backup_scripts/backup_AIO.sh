#!/bin/bash

# Author: Williams Ochu
# Date Created 03-09-2022
# Date Modified: 04-09-2022

# Description: This script will backup the contents of Desktop, Documents and Downloads into one all-in-one archive

# Usage: Run this script to backup the directories into one gz compresssed archive. 
#      : Message will be displayed when backup is completed succesfully
#      : To extract backup kindy use the  "tar -xzf <backup file name>'

echo Hello "${USER^}"
echo -e "This is an all-in-one backup script that will backup into a single compressed gzip archive \nBackups will be stored in a folder called Backups in home directory"
echo "Backup time depends on the size of your folders"

echo -e "Backup in progress...... \nPlease be patient and go grab a cup of Coffee (smiles).."

mkdir "$HOME"/Backups 2>/dev/null
tar -czf ~/Backups/"${USER^}"_Backup_AIO_"$(date +%d-%m-%Y_%H:%M:%S)".tar.gz ~/Documents ~/Downloads ~/Desktop 2>/dev/null

echo "Backup Complete"






