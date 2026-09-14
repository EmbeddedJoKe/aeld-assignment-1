#!/bin/sh

#Joseph Kunitsky - Assignment 1 writer-app

#Accept two runtime arguments (directory and text string)
#Validate the arguments and directory
#Creates new file with name and path
#overwrite existing file and create path if it doesn't exist
#print statement if file could not be created

writefile=$1
writestr=$2

if [ $# -lt 2 ]
then
	echo "Invalid - please enter two arguments"
	exit 1
fi

writedir=$(dirname "$writefile")

mkdir -p "$writedir"

if ! echo "$writestr" > "$writefile"
then
	echo "Could not create file"
	exit 1
fi
