#!/bin/bash

# Author: Williams Ochu
# Date Created: 09-09-2022
# Date Modified: 11-09-2022

# Description: This script will setup a basic calculator to perform arithmetic operations based on user input
#            : This script uses the special parameter "$@" to allow inputs and then uses command substitutuion to carry out the arithmethic operation

# Usage: Kindly enter the operands and arithmetic operator when running the script 

echo "Welcome to ${USER^} Rudimentary Calculator"

echo "The result is:" $(($@))

exit 0
