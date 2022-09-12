#!/bin/bash

# Author: Williams Ochu
# Date Created 03-09-2022
# Date Modified: 04-09-2022

# Description: This script will backup the entire User directory into one single archive

# Usage: Run this script to backup the entire user directory into one gz compresssed archive. 
#      : Message will be displayed when backup is completed succesfully
#      : To extract backup kindy use the  "tar -xzf <backup file name>'

echo Hello "${USER^}"
echo -e "This is an all-in-one backup script that will backup into a single compressed gzip archive \nBackups will be stored in a folder called User_Backups in home directory"
echo "Backup time depends on the size of your folders"

echo -e "Backup in progress...... \nPlease be patient and go grab a cup of Coffee (smiles).."

mkdir "$HOME"/User_Backups 2>/dev/null
tar -czf ~/User_Backups/"${USER^}"_Backup_A_AIO_"$(date +%d-%m-%Y_%H:%M:%S)".tar.gz "$HOME" 2>/dev/null

echo "Backup Complete"






