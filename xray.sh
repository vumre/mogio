#!/bin/sh
if [ ! -f UUID ]; then
  UUID="f3e2e669-657a-430c-87d5-a31823f09e98"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

