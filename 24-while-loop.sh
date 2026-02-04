#!/bin/bash

# Initialize a counter variable
count=1

# Loop as long as 'count' is less than or equal to 5
while [ $count -le 5 ]
do
    echo "Count is $count"
    # Increment the counter
    ((count++))
done