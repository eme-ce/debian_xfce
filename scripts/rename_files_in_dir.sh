#!/bin/bash

DIR=$(ls "$1")
for file in ${DIR[@]}; do
    newName=$(date +%s%N | sha256sum | base64 | head -c 12 | tr -d '+/=')."${file##*.}"
    echo "file renamed: $file -> $newName"
done
