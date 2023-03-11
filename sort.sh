#!/bin/bash

# Define function to check if record book exists and print records in alphabetical order
print_records() {

    if [ -f "$1" ]; then
        if [ -s "$1" ]; then
            echo "Records in $1:"
            sort  "$1"
        else
            echo "Record book $1 is empty"
        fi
    else
        echo "Record book $1 does not exist"
    fi
}

# Call function with record book filename as argument
print_records "records.csv"






