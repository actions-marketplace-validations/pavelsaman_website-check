#!/usr/bin/env bash

url=$1
expected_status_code=$2

[ -z "$expected_status_code" ] && expected_status_code=200
[ -z "$1" ] && { echo "No URL, exiting."; exit 1; }

status_code=$(curl --silent --location --output /dev/null --write-out "%{http_code}" "$url")
[ "$status_code" != "$expected_status_code" ] && { echo "$status_code"; exit 1; }

exit 0
