#!/bin/bash


abort() {
	echo ""; echo "Aborted"; exit 17
}

countdown() {
	number="$1"
	while ! [ "$number" -eq 0 ]; do
		echo "$number"
		((number--));
		sleep 1
	done		
}

trap "abort" INT TERM

countdown "$1"
