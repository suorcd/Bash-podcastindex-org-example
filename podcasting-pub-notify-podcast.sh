#!/bin/env bash

#Required values
FEED_ID="${1:-6699157}"
FEED_URL="${2:-https://salt.ser.yachts/sb/podcast/feed.xml}"
REQUEST_URL="https://api.podcastindex.org/api/1.0/hub/pubnotify?id=${FEED_ID}&url=${FEED_URL}"

# Set required header
HEADERS=(-H "accept: application/json" -H "user-agent: bash-example" )

# Make request
curl -X GET "${HEADERS[@]}"  "${REQUEST_URL}"

