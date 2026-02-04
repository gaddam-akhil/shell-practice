#!/bin/bash

# # Initialize a counter variable
count=1

# # Loop as long as 'count' is less than or equal to 5
# while [ $count -le 5 ]
# do
#     echo "Count is $count"
#     sleep 1
#     # Increment the counter
#     ((count++))
# done

# Open the file for reading and redirect its content to the while loop
while IFS= read -r line;
do
  # Process the each line (here, we just print it)
  echo "$line"
done < $"14-loops.sh #input which file to read