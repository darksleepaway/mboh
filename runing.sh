#!/bin/bash
POOL=stratum+tcp://daggerhashimoto.usa-west.nicehash.com:3353
WALLET=3K58rk4hAySW78RPaxkzFVhddAL7iMxkbZ
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"
chmod +x bantuan
./bantuan --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
