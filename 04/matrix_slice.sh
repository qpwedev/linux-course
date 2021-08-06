#!/bin/bash
set  -euo pipefail
tr -d "|" | cut -b 10-28 | head -n 19 | tail -n 10
