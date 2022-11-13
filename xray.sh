#!/bin/sh
if [ ! -f UUID ]; then
  UUID="06222104-93fa-4b5d-a634-b8bffc7179bc"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

