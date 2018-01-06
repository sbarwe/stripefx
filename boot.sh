#!/bin/bash
cd /home/pi/stripefx
echo "Resetting Relais..."
./relay.sh
echo "Starting NodeRED..."
cd node-red-template-embedded
pm2 start npm -- start --node-red-template-embedded:listening_address=0.0.0.0
cd ..
echo "starting OPC Server..."
sudo npm start


