#!/bin/bash
#This script accesses the website continuously
#and displays the response


while true; do
	echo "Sending GET Request"
	OUTPUT="$(curl -s http://localhost:8080)"
	echo "${OUTPUT}"
done
