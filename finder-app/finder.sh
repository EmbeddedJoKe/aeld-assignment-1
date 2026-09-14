#!/bin/sh

#Joseph Kunitsky - Assignment 1 finder-app

#Accept two runtime arguments (directory and search string)
#Validate the arguments and directory
#Count files and matching lines as specified
#Print the output message in the required format. 

filesdir=$1
searchstr=$2

if [ $# -lt 2 ]
then
	echo "Invalid - please enter two arguments"
	exit 1
fi

if [ ! -d "$filesdir" ]
then
	echo "$filesdir is not a directory"
	exit 1
fi

numfiles=$(find "$filesdir" -type f | wc -1)

nummatches=$(grep -r "$searchstr" "$filesdir" | wc -1)

echo "the number of files are $numfiles and the number of matching lines are $nummatches"

