#!/bin/bash
set -ueo pipefail
env | grep ".*=.*$(whoami).*" | cut -d "=" -f 1 | sort -d
