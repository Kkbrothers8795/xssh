#!/bin/bash
source /app/config.sh

service ssh start
service nginx start

echo "set ngrok token: 2jMtT8iPA3wJvCCFiuuc3lFNnEg_51MgegPoTJixrmJMzaNBn"
ngrok authtoken 2jMtT8iPA3wJvCCFiuuc3lFNnEg_51MgegPoTJixrmJMzaNBn
echo "start ngrok service"
ngrok tcp 22 --log=stdout > ngrok.log
