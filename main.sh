#!/bin/bash

FILE="students-list_1023.txt"

# Function to register a student
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

# Function to view a list of all students on the terminal
function view_students {
    if [[ -f $FILE ]]; then
        echo "Listing all students:"
        cat $FILE
    else
        echo "No student records found."
    fi
}

# Function to delete a students using their id
function delete_student {
    echo -n "Enter student ID to delete: "
    read student_id
    grep -v "^$student_id," $FILE > temp_file && mv temp_file $FILE
    echo "Student record deleted."
}

# Function to update a students details using their id too
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

# Function to exit from the program
function exit_application {
        echo "Exiting the program......"
        exit 0
    }

# Main menu
while true; do
    echo ""
    echo "-----------------------------------------------------"
    echo " ===== ALU REGISTRATION SYSTEM FOR SE NEW COHORT ===="
    echo "-----------------------------------------------------"
    echo ""
    echo "1. Register a student into ALU system"
    echo "2. List of SE cohort of students"
    echo "3. Delete a student"
    echo "4. Update a student"
    echo "5. Exit"
    echo ""
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
