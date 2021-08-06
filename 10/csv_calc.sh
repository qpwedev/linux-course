#!/bin/bash

set -ueo pipefail

SPLITTER=${SPLITTER:-cat}
exit_code=0

get_column() {
    printf "%q" "$( echo "$1" | tr ',' '\n' | tr "'" '"' | sed -n "${2}p" )"
}

prepare_row_computation() {
    local index column value
    echo "set -ueo pipefail"
    index=0
    for column in $( echo "$1" | tr ',' ' ' ); do
        index=$(( index + 1 ))
        value="$( get_column "$2" "$index" )"
        echo "$column='$value'"
    done
    # shellcheck disable=SC2016
    echo 'echo $((' "$3" '))'
}

for arg in "$@"; do
    case $arg in
        --help)
        echo "csv_calc.sh EXPR - Simple CSV calculator

Reads CSV from standard input, adds column corresponding to provided EXPR.

EXPR can refer existing columns and is evaluated inside \$(( )).

See project homepage for more details."
        exit 0
        ;;
        *)
        expression="$( printf "%q" "$1" | tr ',' '\n' )"
        shift
        ;;
    esac
done

if ! [ ${expression+x} ]; then
    echo "Invalid invocation, run with --help for manual." >&2
    exit 1
fi

read -r headers

new_col_name="$( echo "$expression" | cut '-d=' -f 1 )"
new_col_expression="$( echo "$expression" | cut '-d=' -f 2 )"

echo "$headers,$new_col_name"
while read -r csv_line; do
    col_value="$( \
        prepare_row_computation "$headers" "$csv_line" "$new_col_expression" \
        | $SPLITTER \
        | bash 2>/dev/null \
        || echo '-'
    )"
    if [ "$col_value" = "-" ]; then
        echo "Computation failed at $csv_line." >&2
        exit_code=1
        continue
    fi
    echo "$csv_line,$col_value"
done

exit $exit_code
