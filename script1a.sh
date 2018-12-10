#!/bin/bash


list="$1"
while read line; do
    [[ "$line" =~ ^#.*$ ]] && continue
    curl -s "$line">/dev/null
    if [ $? -ne 0 ]; then 
	echo "$line FAILED"   
    else
        echo "$line INIT" 
    fi
done<"$list"

