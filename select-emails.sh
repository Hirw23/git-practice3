#!/bin/bash

# This script helps to extract and sort the email addresses of students from the student list.
# It creates a new file with all the email addresses sorted alphabetically.

# The name of the file where student records are stored.
FILE="students-list_1023.txt"
# The file where sorted emails will be saved.
EXTRACTED_EMAIL_FILE="student-emails.txt"

# Informing the user about the start of the process.
echo "Starting to extract and sort student email addresses from $FILE..."

# Extracting email addresses and sorting them.
# - We look at the second column in each record assuming the format is: id,email,age
# - Then, we sort these emails alphabetically and save them to a new file.
cut -d ',' -f 2 "$FILE" | sort > "$EXTRACTED_EMAIL_FILE"

# Letting the user know the process is complete and where to find the sorted emails.
echo "Emails extracted Sccessfully. Check the sorted list in $EXTRACTED_EMAIL_FILE. file"

