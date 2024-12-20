#!/bin/bash

# Check if log file is provided 
if [ -z "$1" ];
then 
 echo "Pls provide the log file"
 exit 1
fi

log_file=$1

# Count occurrences of specific events in the log
echo "Log Analysis Report"
echo "-------------------"
for level in INFO WARNING ERROR; 
do
	count=$(grep -c "$level" "$log_file")
	echo "Total $level: $count"
done

echo -e "\nTop 10 error messages"
echo      "---------------------"
grep "ERROR" "$log_file" | sort | uniq -c | sort -nr | head -10


