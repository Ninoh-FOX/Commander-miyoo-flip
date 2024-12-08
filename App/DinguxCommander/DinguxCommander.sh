#!/bin/sh
cd $(dirname "$0")
export HOME=/mnt/SDCARD
SDL_GAMECONTROLLERCONFIG_FILE="./gamecontrollerdb.txt" ./gptokeyb -k "DinguxCommander" -c "./DinguxCommander.gptk" &
sleep 1
export LD_LIBRARY_PATH=$(dirname "$0")/lib:$LD_LIBRARY_PATH
./DinguxCommander
kill -9 $(pidof gptokeyb) 

