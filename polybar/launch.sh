#!/usr/bin/env bash
killall -q polybar

# Logs for debugging
echo "---" | tee -a /tmp/polybar.log /tmp/polybar2.log

if [[ "$(xrandr -q | grep -w "connected" | wc -l)" -gt "1" ]]; then 
    SCREENS=($(xrandr --verbose | grep -Fw 'connected' | cut -d ' ' -f 1))
    MAIN_MONITOR=${SCREENS[0]}
    EXT_MONITOR=${SCREENS[1]}
    export MAIN_MONITOR EXT_MONITOR
    polybar bar_dual 2>&1 | tee -a /tmp/polybar.log & disown
    polybar bar_dual_external 2>&1 | tee -a /tmp/polybar2.log & disown
else
    polybar bar_single 2>&1 | tee -a /tmp/polybar.log & disown
fi

echo "Bars launched..."
