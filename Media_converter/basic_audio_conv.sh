#!/bin/bash

# Author: Williams Ochu
# Date Created: 19-09-2022
# Date Modified: 19-09-2022

echo "Warning: Kindly copy your audio file to the same folder where the script is located and being run from"
echo " "
read -p "Enter the audio file name you want to convert): " audname
echo "$audname" > audname000.txt 
cat audname000.txt | cut -d "." -f 1 > rename000.txt

echo " "

PS3="Choose your desired audio format to convert into: "

select forms in mp3 aac wav aiff wma opus; 
do
ffmpeg -i ./"$audname" "$(cat rename000.txt)_conv.$forms" &> /dev/null

rm rename000.txt audname000.txt 
echo "Conversion completed"
break
done 


