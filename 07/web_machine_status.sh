#!/bin/sh

# shellcheck disable=SC2039
# shellcheck disable=SC2086

set -ueo pipefail

output_file=/dev/stdout
file_path="$( mktemp )"
exit_code=0
url="https://d3s.mff.cuni.cz/f/teaching/nswi177/tasks/07/machines/"

getopt_options="-o hqi: -l silent,quiet,help,input:"
getopt -Q $getopt_options -- "$@" || exit 101
eval set -- "$( getopt -q $getopt_options -- "$@" )"

while [ $# -gt 0 ]; do
  case "$1" in
     -h|--help)
        echo "Usage: machine_state.sh [options] [machine-filter]
 -h --help            Print this help.
 -i --input URL       Read state from URL.
 -q --quiet --silent  No output, only exit code."
        exit 0
        ;;
    -q|--quiet|--silent)
        output_file=/dev/null
        ;;
    -i|--input)
        url="$2"
        shift
        ;;
	--)
        shift
        break
        ;;
    *)
        exit 101
        ;;
    esac
    shift
done


get_server_names () {
        curl -s "$1" | jq -r '.[]| "\(.name):\(.id)"'
}
get_server_errors() {
        curl -s "$1$2/services/" | jq -r '.[]| "\(.state)"'
}

for info in $( get_server_names $url ); do
        for error in $( get_server_errors $url "$( echo "$info" | cut -d: -f2 )" ); do
                echo "$info:$error" >> "$file_path"
        done
done

temp_file="$( mktemp )"

if [ "$#" -gt 0 ]; then
    grep "$1" "$file_path" > "$temp_file" || exit 2
    file_path="$temp_file"
fi

my_temp="$( mktemp -d )"

echo -n "" > "$output_file"
while IFS= read -r line; do
    server_name="$( echo "$line" | cut -d ":" -f 1 )"
    data="$( echo "$line" | cut -d ":" -f 3 )"
    if [ "$data" -gt 0 ]; then
        data=1
    fi
    echo "$data" >> "$my_temp/$server_name"
done < "$file_path"

for team_file in "$my_temp/"*; do
    if (( "$(wc -l < "$team_file")" == "$( paste -sd+ < "$team_file" | bc )" )); then
        echo "$( basename "$team_file" ): DOWN" >> "$output_file"
        exit_code=1
    elif (( 0 == "$( paste -sd+ < "$team_file" | bc )" )); then
        echo "$( basename "$team_file" ): UP" >> "$output_file"
    else
        echo "$( basename "$team_file" ): DEGRADED" >> "$output_file"
        exit_code=1
    fi
done

rm -rf "$my_temp"
rm -f "$temp_file"

exit "$exit_code"
