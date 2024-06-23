#!/bin/env bash

#Required values
REQUEST_URL="https://api.podcastindex.org/api/1.0/hub/pubnotify?id=https://salt.ser.yachts/sb/music/album/orthogninal/index.html&url=https://salt.ser.yachts/sb/music/album/orthogninal/feed.xml"

# Set required header
HEADERS=(-H "accept: application/json" -H "user-agent: su || cd" )

# Make request
curl -X GET "${HEADERS[@]}"  "${REQUEST_URL}"

