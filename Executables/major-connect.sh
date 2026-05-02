#!/bin/bash

MAC="00:25:D1:40:CC:ED"

# Immediate feedback so you know i3 triggered it
notify-send "Marshall" "Resetting Bluetooth... Hold Pairing Button Now!"

{
    # Force a disconnect first in case it's 'half-connected'
    echo "disconnect $MAC"
    sleep 1
    echo "remove $MAC"
    sleep 2
    echo "scan on"
    sleep 8
    echo "pair $MAC"
    sleep 3
    echo "trust $MAC"
    sleep 1
    echo "connect $MAC"
    sleep 2
    echo "exit"
} | bluetoothctl

notify-send "Marshall" "Audio Restored! GG"
