#!/bin/bash

# Author: Williams Ochu
# Date Created: 16-09-2022
# Date Modfified: 16-09-2022

# Description: This script allows you to enter any folder name which exists in your home directory. It  purges the redeundant files to free up disk space

# Usage: Kindly follow the prompt and enter the folder name or path to the folder. Enter the number of days to show what files from that time should be removed


read -p "Enter the folder name or folder path to be optimized: " folder
echo " "
read -p "Enter the max duration of date to keep files (Kindly note that files that fall behind this duration will be deleted): " days
echo " "
cd "$HOME"
if [ ! -d "$folder" ]; then 
	echo "No such folder or wrong folder path"
else
	echo "You have selected $folder folder to remove redundant files with a max duration of $days days"
	echo " " 
fi

cd "$folder"

readarray -t cruff < <(find -maxdepth 1 -type f -mtime +"$days")

	for del in "${cruff[@]}"; do
	echo file to be deleted is "$del"
	echo " "
	rm -i "$del"
	echo " "
	if [ ! -f "$del" ]; then 
	echo "$del has been removed !!"
	echo " "
	else 
	echo "You have decided to keep $del file"
	echo " "
	fi
	done
 



