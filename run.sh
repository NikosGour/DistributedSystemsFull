#!/bin/bash
IP=curl ifconfig.me

echo $IP
# sed -i "s|BASE_URL=.*|BASE_URL=${IP}|" .env
# docker compose up --build