#! /bin/bash
# Sum up all the records 
#(values in the second column)

# Define file name
file_name="records.csv"

function rec_sum() {
# Calculate the total amount in column 2 of the file
total=$(awk -F ',' '{sum += $2} END {print sum}' $file_name)
    if [[ $total -gt 0 ]]; then
        echo "Total amount of records: $total"
    else
        echo "No records in the file"
    fi
menu
}