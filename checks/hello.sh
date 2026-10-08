#!/bin/sh
# The page runs hello.sh and shows its greeting.
set -e
H=http://web:5000
curl -fsS "$H/?action=reset" -o /dev/null
curl -fsS "$H/" | grep -q "Default User"
