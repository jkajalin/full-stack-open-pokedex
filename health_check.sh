#!/bin/bash

##echo "Hello from shell script"
alias curl='docker run -it --rm curlimages/curl'
VAR_A=$(curl https://jk-full-stack-pokedex.fly.dev/health | grep -o "ok")
VAR_B="ok"

echo
if [ "$VAR_A" != "$VAR_B" ]; then
    echo "fock"    
    exit 1
else [ "$VAR_A" == "$VAR_B" ]
    echo "It's ok"
    exit 0
fi