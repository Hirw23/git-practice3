# ALU Registration System for SE Cohort Program Class Project

This repository hosts a Bash script designed to manage the registration process for the ALU SE new cohort. It enables the registration, viewing, deletion, and updating of student records, providing a simple and effective way to manage student data.

## Getting Started

These instructions will guide you on how to get a copy of the project up and running on your local machine.

### Prerequisites

To run this script, you will need:

- A Unix-like operating system (Linux or macOS)
- Bash shell (default on most Unix systems)

### Installation

First, clone this repository to your local machine. Open a terminal and run the following command:

```bash
git clone https://github.com/Hirw23/git-practice3.git

```

Then Navigate to the script's directory:

```bash
cd git-practice3
```

Ensure the script is executable:

```bash
chmod +x main.sh
```

To run the ALU Registration System, execute the script from the terminal:

```bash
./main.sh
```

You will be presented with a menu of options:

Register a student into ALU system: Follow the prompts to enter the student's ID, email, and age.
List of SE cohort of students: View all registered students.
Delete a student: Remove a student's record using their ID.
Update a student: Update the details of an existing student.
Exit: Close the program.
Simply choose an option by entering the corresponding number and follow the prompts to manage the student records.

# Student Email Extraction and Sorting

This repository also contains a script designed to extract and sort the email addresses of students from a student records file. The script processes records stored in a specified format (id,email,age), extracts the email addresses, sorts them alphabetically, and saves the sorted list to a new file.

## Overview

The `select-emails.sh` script is a simple yet powerful tool for managing student email addresses. It reads from a file containing student records, extracts the emails, sorts them, and outputs the result to a separate file. This can be particularly useful for educational institutions, course administrators, or anyone managing student data.

### Setup

To use the script, first, ensure you have a file named `students-list_1023.txt` in the same directory as the script, containing student records in the format of `id,email,age`.

### Make the Script Executable

Before running the script, make it executable:

```bash
chmod +x select-emails.sh
```

### Execute the Script

Run the script by typing:

```bash
./select-emails.sh
```

The script will automatically read the students-list_1023.txt file, extract and sort the emails, and save them to student-emails.txt.

### Output

After successful execution, the script will notify you that the emails have been extracted and sorted. You can find the sorted email addresses in the student-emails.txt file within the same directory.
