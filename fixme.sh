#!/bin/bash

# To execute this file
# ./fixme.sh

# Define the filename
filename='config.nu'
newtext='source ~/j/tmp17/nuconfig/alias.nu'

# Type the text that you want to append
# read -p "Enter the text that you want to append:" newtext

# Check the new text is empty or not
if [ "$newtext" != "" ]; then
      # Append the text by using '>>' symbol
      echo $newtext >> $filename
fi
