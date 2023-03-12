#!/bin/bash



# Define function to check if record book exists and print records in alphabetical order
rec_sort() {

# the -f option is used to check if a file exists and is a regular file
    if [ -f "$1" ]; then

# the -s option is used to check if a file exists and has a non-zero size.    
        if [ -s "$1" ]; then
            echo "Records in file_name:"
# sort sorts the contents of a file in ascending order and print the sorted output to the standard output:            
            sort "$1"
        else
            echo "Record book file_name is empty"
        fi
    else
        echo "Record book file_name does not exist"
    fi
   

}

# Call function with record book filename as argument
rec_sort "records.csv"






