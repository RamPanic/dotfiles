#!/bin/sh

curl -s https://api.bluelytics.com.ar/v2/latest | python -c "import sys, json; result=json.load(sys.stdin)['blue']; print(\"DBC: \${} - DBV: \${}\".format(result['value_buy'], result['value_sell']))" 2>/dev/null
