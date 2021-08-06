#!/bin/bash
set -ueo pipefail
curl -s "$1" | grep -ho 'href="mailto:[A-Za-z0-9\-\.]\+@[A-Za-z0-9\-\.]\+"' | cut -d ":" -f 2 | cut -d '"' -f 1 | sort -d
