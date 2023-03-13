#! /bin/bash
#update the count of the records by using the search date. 
#We receive a record name and records count from "rec_search" function. 
#The user edits the count of the records manually.
# Check if the new amount is greater than 1

# Define file name
file_name="records.csv"

function rec_edit_count() {
    rec_name
if [[ rec_search ]]; then
    rec_list
    local record_name=$name
    rec_amount
local new_amount=$amount
    if [ "$new_amount" -lt 1 ]; then
        echo "The number of records must be greater than 1"
    else
        sed -i "s/^$record_name,.*/$record_name,$new_amount/" $file_name
        echo "You have updated the $record_name record amount to $new_amount, successfully."
fi
else
    echo "No such records"
fi
menu
}