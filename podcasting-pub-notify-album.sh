#!/bin/env bash
FEED_ID="${1:-6699158}"
FEED_URL="${1:-https://salt.ser.yachts/sb/music/album/orthogninal/feed.xml}"
#Required values
REQUEST_URL="https://api.podcastindex.org/api/1.0/hub/pubnotify?id=https://salt.ser.yachts/sb/music/album/orthogninal/index.html&url=${FEED_URL}"

# Set required header
HEADERS=(-H "accept: application/json" -H "user-agent: su || cd" )

# Make request
curl -X GET "${HEADERS[@]}"  "${REQUEST_URL}"

