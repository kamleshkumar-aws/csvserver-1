#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <start_index> <end_index>  "
    exit 1
fi

start_index=$1
end_index=$2

if [ "$start_index" -ge "$end_index" ]; then
    echo "Start index must be less than end index."
    exit 1
fi

output_file="inputFile"

rm -f "$output_file"  # Remove the file if it already exists

for ((i = start_index; i <= end_index; i++)); do
    random_number=$((1 + $RANDOM % 1000))  # Generates a random number between 1 and 1000
    echo "$i, $random_number" >> "$output_file"
done

echo "File '$output_file' generated with entries from $start_index to $end_index."
