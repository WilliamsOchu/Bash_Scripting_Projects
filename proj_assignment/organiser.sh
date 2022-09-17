#!/bin/bash

# Author: Williams Ochu
# Date Created: 16-09-2022
# Date Modified: 16-09-2022

# Description: This script will organise files in a given folder in your home directory into different sub-folders based on their filetypes

# Usage: Enter the folder name that you would like to organise

read -p "Enter the Folder name or path to the folder that you would like to organise: " folder
cd "$HOME"
cd "$folder"
if [ ! -d "$HOME"/Organizer ]; then
mkdir "$HOME"/Organizer
	echo "Files will be grouped in a folder called Organiser in Home directory"
else 
	echo "Files will be grouped in a folder called Organiser in Home directory"
fi

while read org; do
case "$org" in
	*.jpeg|*.jpg|*.png) 
		stash=images
		if [ ! -d "$HOME/Organizer/$stash" ]; then 
		mkdir "$HOME/Organizer/$stash"
		cp "$org" "$HOME/Organizer/$stash"
		else
		cp "$org" "$HOME/Organizer/$stash"
		fi;;
	*.doc|*.docx|*.txt|*.pdf)
		stash=documents
		if [ ! -d "$HOME/Organizer/$stash" ]; then 
		mkdir "$HOME/Organizer/$stash"
		cp "$org" "$HOME/Organizer/$stash"
		else
		cp "$org" "$HOME/Organizer/$stash"
		fi;;
	*.xls|*.xlsx|*.csv)
		stash=spreadsheets
		if [ ! -d "$HOME/Organizer/$stash" ]; then 
		mkdir "$HOME/Organizer/$stash"
		cp "$org" "$HOME/Organizer/$stash"
		else
		cp "$org" "$HOME/Organizer/$stash"
		fi;;
	*.sh)
		stash=scripts
		if [ ! -d "$HOME/Organizer/$stash" ]; then 
		mkdir "$HOME/Organizer/$stash"
		cp "$org" "$HOME/Organizer/$stash"
		else
		cp "$org" "$HOME/Organizer/$stash"
		fi;;
	*.zip|*.tar|*.tar.gz|*.tar.bz2)
		stash=archives
		if [ ! -d "$HOME/Organizer/$stash" ]; then 
		mkdir "$HOME/Organizer/$stash"
		cp "$org" "$HOME/Organizer/$stash"
		else
		cp "$org" "$HOME/Organizer/$stash"
		fi;;

	*.ppt|*.pptx)
		stash=presentations
		if [ ! -d "$HOME/Organizer/$stash" ]; then 
		mkdir "$HOME/Organizer/$stash"
		cp "$org" "$HOME/Organizer/$stash"
		else
		cp "$org" "$HOME/Organizer/$stash"
		fi;;

	*.mp3)
		stash=audio
		if [ ! -d "$HOME/Organizer/$stash" ]; then 
		mkdir "$HOME/Organizer/$stash"
		cp "$org" "$HOME/Organizer/$stash"
		else
		cp "$org" "$HOME/Organizer/$stash"
		fi;;

	*.mp4)
		stash=video
		if [ ! -d "$HOME/Organizer/$stash" ]; then 
		mkdir "$HOME/Organizer/$stash"
		cp "$org" "$HOME/Organizer/$stash"
		else
		cp "$org" "$HOME/Organizer/$stash"
		fi;;

	*) echo "$org does not belong to a general category and will not be moved";;
esac
done < <(ls .)

