#!/usr/bin/env bash
killall -q polybar
# Launch bar
echo "---" | tee -a /tmp/polybar.log /tmp/polybar.log
polybar bar 2>&1 | tee -a /tmp/polybar.log & disown

echo "Bars launched..."
