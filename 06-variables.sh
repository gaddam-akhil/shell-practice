#!/bin/bash

STARTTIME=$(date +%S)

echo "script executed at $STARTTIME"

sleep 10

TOTALTIME=$((END_TIME-STARTTIME))
END_TIME=$(date +%S)

echo "script executed at:: $TOTALTIME secounds"