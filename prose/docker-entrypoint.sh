#!/bin/sh
set -e

sed -ri "s/OAUTH_CLIENT_ID/$OAUTH_CLIENT_ID/" oauth.json
sed -ri "s/GATEKEEPER_URL/$GATEKEEPER_URL/" oauth.json

gulp

# First argument is a switch
if [ "${1:0:1}" = '-' ]; then
    set -- serve "$@"
fi

exec "$@"
