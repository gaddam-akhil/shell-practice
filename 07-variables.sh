#!/bin/bash

echo "all args passed to script:: $@"
echo "number of args passed to script:: $#"
echo "script name:: $0"
echo "present which directory:: $PWD"
echo "who is running this script:: $USER"
echo "home directory of the user:: $HOME"
echo "pid of the script:: $$"
sleep 100 &
echo "backgroud process id:: $!"
echo "all args passed to script:: $*"
echo "exit code of previous script:: $? "