#!/bin/bash
set  -euo pipefail
tr "|" " " | awk '{$1=$1};1' | tr -s " " | tr " " "+" | bc
