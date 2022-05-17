# Bash-podcastindex-org-example

Run command with api key and secret
```
$ ./podcasting-index.sh <apiKey> <apiSecret>
```

# jq
Install and use the jq command for prettier output and other nice things.


## Get titles
```
curl "${HEADERS[@]}"  "${REQUEST_URL}" | jq .feeds[].title
```
