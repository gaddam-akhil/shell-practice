#!/bin/bash



START_TIME=$(date +%s)

echo "Script started at $START_TIME"

sleep 10

END_TIME=$(date +%s)

TOTALTIME=$((END_TIME - START_TIME))

echo "Script executed in $TOTALTIME seconds"

#START_TIME=$(date +%S)
#echo "script executed at $START_TIME"
#sleep 10
#END_TIME=$(date +%S)
#TOTALTIME=$(($END_TIME-$START_TIME))
#echo "script executed at:: $TOTALTIME secounds"