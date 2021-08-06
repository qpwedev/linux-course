#!/bin/bash

set -ueo pipefail

msg() {
    echo "$( date '+# %Y-%m-%d %H:%M:%S |' )" "$@" >&2
}


MY_TEMP="$( mktemp -d )"
msg "Will be using $MY_TEMP for temporary files ..."

# shellcheck disable=SC2064 # MY_TEMP will not change
trap "rm -rf \"$MY_TEMP\"" INT QUIT TERM EXIT

msg "Fetching tests for NSWI177 ..."
curl --silent "https://d3s.mff.cuni.cz/f/teaching/nswi177/tests.tar.gz" >"$MY_TEMP/tests.tar.gz"

(
    msg "Unpacking tests ..."
    cd "$MY_TEMP"
    tar xzf tests.tar.gz
)

msg "Starting tests ..."
"$MY_TEMP/main.sh"
