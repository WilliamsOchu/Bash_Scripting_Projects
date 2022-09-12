#!/bin/bash

# Author: Williams Ochu
# Date Created 03-09-2022
# Date Modified: 04-09-2022

# Description: This script will backup the contents of Desktop, Documents and Downloads into separate archives

# Usage: Run this script to backup the directories into separate gz compresssed archives 
#      : Message will be displayed when backup is completed succesfully
#      : To extract backup kindy use the  "tar -xzf <backup file name>'

echo Hello "${USER^}"
echo -e "This backup script will backup into separate compressed gzip archives \nBackups will be stored in a folder called Sepatrate_Backups in home directory"
echo "Backup time depends on the size of your folders"

echo -e "Backup in progress...... \nPlease be patient and go grab a cup of Coffee (smiles).."

mkdir "$HOME"/Separate_Backups 2>/dev/null
tar -czf ~/Separate_Backups/"${USER^}"_Desktop_Backup_"$(date +%d-%m-%Y_%H:%M:%S)".tar.gz ~/Desktop 2>/dev/null

tar -czf ~/Separate_Backups/"${USER^}"_Documents_Backup_"$(date +%d-%m-%Y_%H:%M:%S)".tar.gz ~/Documents 2>/dev/null

tar -czf ~/Separate_Backups/"${USER^}"_Downloads_Backup_"$(date +%d-%m-%Y_%H:%M:%S)".tar.gz ~/Downloads 2>/dev/null

echo "Backup Complete"





