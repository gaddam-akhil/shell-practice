#!/bin/bash

echo "all args passed to script:: $@"
ALLARGS=$(date +%s)
echo "$ALLARGS passed time is"
sleep 10 &
echo "number of args passed to script:: $#"
NUMOFARGS=$(date +%s)
echo "$NUMOFARGS passed time is"
echo "script name:: $0"
echo "present which directory:: $PWD"
echo "who is running this script:: $USER"
echo "home directory of the user:: $HOME"
echo "pid of the script:: $$"
PID=$(date +%s)
echo "$PID time is "
sleep 100 &
echo "backgroud process id:: $!"
ID=$(date +%s)
echo "$ID time is"
echo "all args passed to script:: $*"
echo "exit code of previous script:: $? "