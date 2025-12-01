#!/bin/bash

echo "Starting program at $(date)" # Date will be substitued

echo "Running program $0 with $# arguments with pid $$"

for file in "$@"; do # iterate thru all files passed thru
	grep foobar "$file" 1> /dev/null 2> /dev/null # n> /dev/null is discarding the file descripter n
	# when pattern is not found, grep has exit status
	# we redirect STDOUT and STDERR to a null register
	if [[ "$?" -ne 0 ]]; then
		echo "File $file does not have any foobar, adding one"
		echo "# foobar" >> "$file"
	fi
done
