#!/bin/bash

# Author: Williams Ochu
# Date Created: 19-09-2022
# Date Modified: 19-09-2022

echo "Warning: Kindly copy your video file to the same folder where the script is located and being run from"
echo " "
read -p "Enter the video file name you want to convert): " vidname
echo "$vidname" > vidname000.txt 
cat vidname000.txt | cut -d "." -f 1 > rename000.txt

echo " "

PS3="Choose your desired video format to convert into: "

select forms in mp4 mov avi flv mkv wmv; 
do
ffmpeg -i ./"$vidname" "$(cat rename.txt)_conv.$forms" &> /dev/null

rm rename000.txt vidname000.txt 
echo "Conversion completed"
break
done 


