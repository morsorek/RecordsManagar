#! /bin/bash

# Define file name
file_name="records.csv"

# Define function to check if record book exists and print records in alphabetical order
function rec_sort() {
# the -f option is used to check if a file exists and is a regular file
    if [ -f "$file_name" ]; then
# the -s option is used to check if a file exists and has a non-zero size.
        if [ -s "$file_name" ]; then
            echo "Records in "$file_name":"
# sort sorts the contents of a file in ascending order and print the sorted output to the standard output:
            sort "$file_name"
        else
            echo "Record book "$file_name" is empty"
        fi
    else
        echo "Record book "$file_name" does not exist"
    fi
   menu
}