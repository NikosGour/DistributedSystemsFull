#!/bin/bash
IP=`curl -s ifconfig.me`

echo "The machine's ip is = ${IP}"
sed -i "s|^BASE_URL=.*|BASE_URL=${IP}|" .env