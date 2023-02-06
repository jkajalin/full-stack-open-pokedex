#!/bin/bash

##echo "Hello from shell script"
#alias curl='fly curl'
VAR_A=$(curl -v https://jk-full-stack-pokedex.fly.dev/health | grep "ok")
VAR_B="ok"

echo
if [ "$VAR_A" != "$VAR_B" ]; then
    echo "fock"    
    exit 1
else [ "$VAR_A" == "$VAR_B" ]
    echo "It's ok"
    exit 0
fi