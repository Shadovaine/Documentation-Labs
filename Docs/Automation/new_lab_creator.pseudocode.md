#!/usr/bin/env bash




BASE_LABS_DIR="Documentationlabs/labs"

if [[ ! -d "$BASE_LABS_DIR" ]]; then
    printf "Error: Labs directory not found.\n" >&2 
    exit 1

# PROMPT user to give a lab title
printf "Lab title please: "
read LAB_TITLE

if [[ -z "$LAB_TITLE" ]]; then 
    printf "Error: Lab title cannot be empty!\n" >&2
    exit 1

# NORMALIZE lab_title
# TRIM whitespace
# REPLACE spaces with underscores
# REMOVE unsafe characters

COMPOSE lab_directory_name as "Lab" + lab_number + "_" + normalized_lab_title
COMPOSE full_lab_path as base_labs_directory + "/" + lab_directory_name

IF full_lab_path already exists
    printf "Error: "Lab directory already exists!\n"
    exit 1

CREATE directory full_lab_path
IF creation fails
    printf "Error: "Failed to create lab directory!\n"
    exit 1

FOR each file in [README.md, commands.md, notes.md]
    CREATE file inside full_lab_path
    IF file creation fails
        printf "error: "Failed to create <file>"
        EXIT 1

WRITE initial content to README.md
    INCLUDE lab title
    INCLUDE placeholder for purpose and procedure

WRITE initial content to commands.md
    INCLUDE header for executed commands

WRITE initial content to notes.md
    INCLUDE header for observations and takeaways

PRINT success message
    INCLUDE lab name
    INCLUDE next recommended action

EXIT with success

END
