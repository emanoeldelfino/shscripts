#! /usr/bin/env bash

if [ $# -eq 0 ]; then
    echo "usage ./rename.sh <pattern> <offset from 0 to cut> <max length>"
else
    pattern=$1
    offset=$2
    length=$3

    for file in $(ls | grep $pattern); do 
        mv -- "$file" "${file:$offset:$length}"; 
    done
fi

