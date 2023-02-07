#!/bin/bash

if  [[ $# -eq 2 ]] 
then
   echo "Entered arguments passed"
else
    echo "Please enter 2 arguments"
    exit 1
fi

filePath=$1
stringToWrite=$2

touch $filePath

if [[ -f $filePath ]]
then
    echo "Entered file path is a File"
else
    echo "No file exists"
    exit 1
fi

echo $stringToWrite > $filePath


if [[ $? -eq 0 ]]
then
    echo "Success"
else
    echo "Fail"
    exit 1
fi
