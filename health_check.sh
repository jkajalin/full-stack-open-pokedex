#!/bin/bash

##echo "Hello from shell script"
VAR_A=$(curl https://jk-full-stack-pokedex.fly.dev/health | grep -o "ok")
VAR_B="ok"

echo
if [ "$VAR_A" != "$VAR_B" ]; then
    echo "Not equal ..."
else [ "$VAR_A" = "$VAR_B" ]
    echo "It's a match

exit 0