#!/bin/env bash


#Required values
REQUEST_URL='https://api.podcastindex.org/api/1.0/add/byfeedurl?url=https://salt.ser.yachts/sb/podcast/feed.xml&pretty=true'
API_KEY="${1:-XXXX33XXXXXX}"
API_SECRET="${2:-YYYY33YYYY}"
API_HEADER_TIME="$(date +%s)"

FEED_URL="${3}"
if [ -z "${FEED_URL}" ]; then
  echo "Feed URL is required"
  exit 1
fi

# Has values to get Authorization token
HASH="$(echo -n "${API_KEY}${API_SECRET}${API_HEADER_TIME}" | sha1sum | awk '{print $1}')"

# Set required header
HEADERS=(-H "accept: application/json" -H "user-agent: su || cd" -H "X-Auth-Key: ${API_KEY}" -H "X-Auth-Date: ${API_HEADER_TIME}" -H "Authorization: ${HASH}")

# Make request
curl -X POST "${HEADERS[@]}"  "${REQUEST_URL}"

