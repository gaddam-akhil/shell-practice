#!/bin/bash

START_TIME=$(date +%S)

echo "script executed at $START_TIME"

sleep 10

TOTALTIME=$(($END_TIME-$START_TIME))
END_TIME=$(date +%S)

echo "script executed at:: $TOTALTIME secounds"