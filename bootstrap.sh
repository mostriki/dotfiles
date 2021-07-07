#!/bin/bash

# Remaps and binds keys
sudo apt-get install -y xbindkeys

sudo apt-get install xdotool

xbindkeys -d > ~/.xbindkeysrc

# Disable middle click on Touchpad
xinput set-button-map 13 1 0 3 4 5 6 7

# Disassociate Trackpoint buttons
xinput set-button-map 14 11 12 13 4 5 6 7

#Kill all xbindkeys jobs, in case this script was already played
killall -s1 xbindkeys

#Run xbindkeys
xbindkeys

