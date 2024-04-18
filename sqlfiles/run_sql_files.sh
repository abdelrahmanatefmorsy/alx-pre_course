#!/bin/bash

# Define the directory containing your SQL files
SQL_DIR="./"

# Loop through each SQL file in the directory
for file in "$SQL_DIR"/*.sql; do
    echo "Running SQL file: $file"
    # Execute the SQL file using the MySQL client
    mysql -u username -p < "$file"
    echo "Finished running SQL file: $file"
done
