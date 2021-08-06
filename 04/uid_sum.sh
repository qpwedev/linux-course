#!/bin/bash
set  -euo pipefail
cut -d ":" -f3 | sort -g | tail -n 5 | paste -sd+ | bc 
