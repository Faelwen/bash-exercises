# Modify the script from the previous exercise. Make the "file_count" function accept a directory as an argument. Next have the function display the name of the directory followed by a colon. Finally, display the number of files to the screen on the next line. Call the function three times. First, on the "/etc" directory, next on the "/var" directory and finally on the "/usr/bin" directory.



#!/bin/bash

function number_of_files() {
	local DIRECTORY=$1
	local NUMBER_OF_FILES=$(ls $DIRECTORY | wc -l)
	echo $DIRECTORY
	echo $NUMBER_OF_FILES
}

number_of_files /etc
number_of_files /var
number_of_files /usr/bin
