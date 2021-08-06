#!/bin/sh

proc_dir="${PROCFS_BASE:-/proc}"
cd "$proc_dir" || exit 1

on_exit() {
        trap - EXIT
        exit 0
}

trap "on_exit" INT QUIT TERM EXIT

(for i in *; do
	if [ -d "$i" ]; then 
		pid="$i"
		rchar="$( grep -s "rchar" "$i/io"| cut -d " " -f 2 )"
		wchar="$( grep -s "wchar" "$i/io" | cut -d " " -f 2 )"
		cmdline="$( tr -d '\0' 2>/dev/null < "$i/cmdline" )"
		if [ -z "$rchar" ]; then rchar="-"; fi
		if [ -z "$wchar" ]; then wchar="-"; fi
		if [ -z "$cmdline" ]; then cmdline="-"; fi
		echo "$pid:$rchar:$wchar:$cmdline"
	fi
done) | sort -n
