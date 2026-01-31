#!/bin/bash

set -e #ERR

trap 'echo "There is an error in $LINENO, Command: $BASH_COMMAND"' ERR

echo "hi"
echo "hello"
echoo "am akhil"
echo "laddu"
