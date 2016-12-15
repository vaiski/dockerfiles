#!/bin/sh
set -e

sed -ri "s/GITHUB_APPLICATION_CLIENT_ID/$OAUTH_CLIENT_ID/" config.json
sed -ri "s/GITHUB_APPLICATION_CLIENT_SECRET/$OAUTH_CLIENT_SECRET/" config.json

# First argument is a switch
if [ "${1:0:1}" = '-' ]; then
    set -- node server.js "$@"
fi

exec "$@"
