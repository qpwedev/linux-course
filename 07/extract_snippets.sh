#!/bin/sh

# shellcheck disable=SC2039
# shellcheck disable=SC3040
# shellcheck disable=SC3057

set -ueo pipefail
current_file=/dev/null
exit_code=0

process_file () {
        counter=1
        quotes=0
        directory_name=""

        if [ "$1" = "/dev/stdin" ]; then
                directory_name="./stdin"
        else
                directory_name="$( dirname "$( realpath "$1" )")/$( basename "$1" .md )"
        fi

        mkdir -p "$directory_name"

        while IFS= read -r i; do
                if echo "$i" | grep -q "\`\`\`"; then
                        if [ $quotes -eq 1 ]; then
                                quotes=0
                        else
                                quotes=1
                                number=$( printf "%02d\n" $counter )
                                case ${i:3} in
                                        python | python3) echo "$number.py"
                                        current_file="$directory_name/$number.py"
                                        ;;
                                        sh | shell) echo "$number.sh"
                                        current_file="$directory_name/$number.sh"
                                        ;;
                                        bash) echo "$number.bash"
                                        current_file="$directory_name/$number.bash"
                                        ;;
                                        *) echo "$number"
                                        current_file="$directory_name/$number"
                                esac
                                counter="$((counter+1))"
                                continue
                        fi
                fi

                if [ $quotes -eq 1 ]; then
                        echo "$i" >> "$current_file"
                fi
        done < "$1"

        for i in "$directory_name/"*; do
                if ! grep -q "#\!\/*" "$i"; then
                        postfix=$( basename "$i" | cut -d "." -f 2 )
                        tmp=$( mktemp )
                        case $postfix in
                                py) sed  '1 s/^/#!\/bin\/env python3\n/' "$i" > "$tmp"
                                cat "$tmp" > "$i"
                                ;;
                                sh) sed  '1 s/^/#!\/bin\/sh\n/' "$i" > "$tmp"
                                cat "$tmp" > "$i"
                                ;;
                                bash) sed  '1 s/^/#!\/bin\/bash\n/' "$i" > "$tmp"
                                cat "$tmp" > "$i"
                                ;;
                                *) true
                                ;;
                        esac
                        rm -f "$tmp"
                fi
        done
}

while [ "$#" -gt 0 ]; do
        case $1 in
                -) 
                process_file "/dev/stdin"
                ;;
                *)
                if [ -f "$1" ]; then
                        process_file "$1"
                else
                        exit_code=1
                fi
                ;;
        esac
        shift
done

exit "$exit_code"
