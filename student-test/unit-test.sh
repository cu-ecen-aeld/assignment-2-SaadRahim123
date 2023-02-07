#!/bin/bash

# Accept the runtime Argument
# First Argument dir , Second Argument is the search str


#return Error value -1 if any error parameters were not specified

# return value 1 error if filesdir does not represent a dir 

if  [[ $# -eq 2 ]] 
then
    echo "Number of arguments are correct"
else
    echo "Please enter two arguments"
    echo "Arguments entered are $#"
    exit 1
fi

# passed

fileDirectory=$1
searchString=$2

if [[ -d "${fileDirectory}" ]]
then
    echo "Argument 1 Passed"
    echo "Entered directory is $fileDirectory"
else
    echo "The argument 1 entered is not a directory"
    exit 1
fi

ret="$(grep -r $searchString $fileDirectory )"

echo "Return String is $ret"

echo "file Directory is $fileDirectory"
echo "Search String is $searchString"

