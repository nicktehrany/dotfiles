#!/usr/bin/env bash
killall -q polybar

# Logs for debugging
echo "---" | tee -a /tmp/polybar.log /tmp/polybar2.log

if [[ "$(xrandr -q | grep -w "connected" | wc -l)" -gt "1" ]]; then 
    polybar bar_dual 2>&1 | tee -a /tmp/polybar.log & disown
    polybar bar_dual_external 2>&1 | tee -a /tmp/polybar2.log & disown
else
    polybar bar_single 2>&1 | tee -a /tmp/polybar.log & disown
fi

echo "Bars launched..."
