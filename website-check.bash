#!/usr/bin/env bash

url=$1
expected_status_code=$2
redirect=$3
echo $*

[ -z "$expected_status_code" ] && expected_status_code=200
[ -z "$1" ] && { echo "No URL, exiting."; exit 1; }

if [ "$redirect" == 'true' ]; then
  status_code=$(curl --silent --location --output /dev/null --write-out "%{http_code}" "$url")
else
  status_code=$(curl --silent --output /dev/null --write-out "%{http_code}" "$url")
fi
echo "$status_code"

[ "$status_code" != "$expected_status_code" ] && exit 1
exit 0
