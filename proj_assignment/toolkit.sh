#!/bin/bash

# Author: Williams Ochu
# Date Created: 16-09-2022
# Date Modified: 16-09-2022

# Description: This toolkit selector will provide the user with options to run two different scripts

# Usage: Kindly run this csript and select an option to make this script execute the other script

PS3="Kindly select which script you would love to execute: "
select script in cruff_remover.sh organiser.sh; 
do 
chmod 744 "$script"
./"$script"
chmod 644 "$script"
break
done
