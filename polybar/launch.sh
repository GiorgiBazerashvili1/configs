#!/usr/bin/env bash

# Terminate already running bar instances
polybar-msg cmd quit

# Otherwise, use the nuclear option:
# killall -q polybar

# Launch a single bar
echo "---" | tee -a /tmp/polybar1.log
polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bar launched..."

