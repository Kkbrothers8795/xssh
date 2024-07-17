#!/bin/bash
source /app/config.sh

service ssh start
service nginx start

echo "set ngrok token: 1uD2PPU1yFDWN1TRZKl8Li5AYOH_2t7GxZk5F4r4DkZPB25m7"
ngrok authtoken 1uD2PPU1yFDWN1TRZKl8Li5AYOH_2t7GxZk5F4r4DkZPB25m7
echo "start ngrok service"
ngrok tcp 22 --log=stdout > ngrok.log
