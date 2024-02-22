#!/bin/bash

# Check if the directory exists, if not create it
if [ ! -d "negpod_2-q1" ]; then
    mkdir negpod_2-q1
fi

# Move the files to the directory
mv main.sh students-list_1023.txt select-emails.sh student-emails.txt README.md  negpod_2-q1/

echo "Files moved successfully to negpod_2-q1 directory."
