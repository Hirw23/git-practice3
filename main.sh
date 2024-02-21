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
function view_students {
    if [[ -f $FILE ]]; then
        echo "Listing all students:"
        cat $FILE
    else
        echo "No student records found."
    fi
}
function delete_student {
    echo -n "Enter student ID to delete: "
    read student_id
    grep -v "^$student_id," $FILE > temp_file && mv temp_file $FILE
    echo "Student record deleted."
}
function update_student {
    echo -n "Enter student ID to update: "
    read student_id
    grep -v "^$student_id," $FILE > temp_file
    echo -n "Enter new student Email: "
    read student_email
    echo -n "Enter new student Age: "
    read student_age
    echo "$student_id,$student_email,$student_age" >> temp_file
    mv temp_file $FILE
    echo "Student record updated."
}
function exit_application {
        echo "Exiting application."
        exit 0
    }
while true; do
    echo " ===== ALU registration system ====:"
    echo "1. Register a student record"
    echo "2. List of SE cohort of students"
    echo "3. Delete a student"
    echo "4. Update a student record"
    echo "5. Exit"
    read operation
    case $operation in
        1) create_student ;;
	2) view_students ;;
	3) delete_student ;;
	4) update_student ;;
	5) exit_application ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done
