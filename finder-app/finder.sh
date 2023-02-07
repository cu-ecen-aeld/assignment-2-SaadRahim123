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

if [[ -d "$fileDirectory" ]]
then
    totalFiles=$(find $fileDirectory -mindepth 1 | wc -l)
    searchStr=$(grep -r $searchString $fileDirectory | wc -l)
    echo "The number of files are $totalFiles and the number of matching lines are $searchStr myfile"
else
	
    echo "The argument 1 entered is not a directory"
    exit 1
fi


