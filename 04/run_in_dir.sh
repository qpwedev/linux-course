#!/bin/bash
set  -euo pipefail
test -f ./01/input.txt && wc -w ./01/input.txt | cut -d " " -f 1 || echo 0 
