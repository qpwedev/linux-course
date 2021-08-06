#!/bin/bash
set  -euo pipefail
echo "Random password: $(grep -oa "[0-9A-Za-z]" /dev/urandom | head -n 20 | tr -d "\n")"
