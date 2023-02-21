#!/bin/bash

# Author: Ochu Williams 
# Date Created: 21-02-2023
# Date Modified: 21-02-2023
# Description: This script will run a comprehensive spell check for all the text based files in a given directory 
# Usage: To make use of this script kindly run the script and input the directory where the text files are located

echo Welcome: "${USER^}"
read -p "Enter your file absolute directory: " folderlocation
echo ""
echo "Spell-check will check: "$folderlocation" directory for text files with typo errors"
echo ""

cd "$folderlocation"

readarray -t checks < <(ls *.txt *.doc *.docx *.pdf *.odt 2> /dev/null) 
for check in "${checks[@]}"; do
echo "$check"
aspell -c "$check"
echo "typo errors have been corrected based on your considerations in: "$check""
echo ""
done

