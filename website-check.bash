#!/usr/bin/env bash

url=$1
expected_status_code=$2

[ -z "$expected_status_code" ] && expected_status_code=200
[ -z "$1" ] && { echo "No URL, exiting."; exit 1; }

status_code=$(curl --silent --output /dev/null --write-out "%{http_code}" "$url")
echo "$status_code"

[ "$status_code" != "$expected_status_code" ] && exit 1
exit 0
