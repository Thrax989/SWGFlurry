#!/bin/bash
cd ~/workspace/Core3/MMOCoreORB/bin
screen -dmS swgemu-server -L ./startcore3.sh
exec screen -D -RR swgemu-server