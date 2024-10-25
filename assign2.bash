#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 inputFile"
    exit 1
fi

inputFile="$1"
outputFile="outputProgram.c"

sed -f assign2.sed "$inputFile" > "$outputFile"
