#!/bin/bash
set  -ueo pipefail
tr -d "0-9" < README.md | head -n 15 | awk "{print length}" | sort -n | tail -n 1
