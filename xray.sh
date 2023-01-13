#!/bin/sh
if [ ! -f UUID ]; then
  UUID="224de703-3774-4e75-9ab9-04eee98e1dc4"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

