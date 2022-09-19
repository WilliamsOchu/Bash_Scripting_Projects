#!/bin/bash

# Author: Williams Ochu
# Date Created: 18-09-2022
# Date Modified: 19-09-2022

# Description: This script is a PC utility that helps monitor System resources at any given instant. 
#	     : Anytime its run, it logs info such as PC-uptime, Mem usage, Disk space and internet connection status

# Usage: Kindly execute this script and check your home directory for a folder named PC_info. All performance related infor will be logged in it
 
mkdir ~/PC_info 2> /dev/null
echo " "
date >> ~/PC_info/performance.log
echo " "

echo "System Uptime: " >> ~/PC_info/performance.log
uptime -s >> ~/PC_info/performance.log; uptime -p >> ~/PC_info/performance.log


echo " " 
ping -c 1 google.com &> /dev/null

if [ "$?" -eq 0 ]; then
	echo "Internet Status: Connected" >> ~/PC_info/performance.log
else
	echo "Internet Status: Disconnected" >> ~/PC_info/performance.log
fi

echo "Memory Usage: " >> ~/PC_info/performance.log
free -h >> ~/PC_info/performance.log
echo " "
echo " "
echo "Disk Usage: " >> ~/PC_info/performance.log
df -h >> ~/PC_info/performance.log
echo " "
