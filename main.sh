#!/bin/bash

FILE="students-list_1023.txt"

function create_student {
    echo -n "Enter student ID: "
    read student_id
    echo -n "Enter student Email: "
    read student_email
    echo -n "Enter student Age: "
    read student_age
    echo "$student_id,$student_email,$student_age" >> $FILE
    echo "Student record created."
}
while true; do
    echo " ===== ALU registration system ====:"
    echo "1. Register a student record"
    read operation
    case $operation in
        1) create_student ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done
