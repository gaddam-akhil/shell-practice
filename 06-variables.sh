#!/bin/bash



# START_TIME=$(date +%s)

# echo "Script started at $START_TIME"

# sleep 10

# END_TIME=$(date +%s)

# TOTALTIME=$((END_TIME - START_TIME))

# echo "Script executed in $TOTALTIME seconds"

#START_TIME=$(date +%s)
#echo "script executed at $START_TIME"
#sleep 10
#END_TIME=$(date +%s)
#TOTALTIME=$(($END_TIME-$START_TIME))
#echo "script executed at:: $TOTALTIME secounds"
#I want a command to be executed and take the output into variable,how to do that

START_TIME=$(date +%s)

echo "start time is - $START_TIME"

sleep 10

END_TIME=$(date +%s)


TOTALTIME=$(($END_TIME-$START_TIME))

echo "TOTALTIME is $TOTALTIME"
