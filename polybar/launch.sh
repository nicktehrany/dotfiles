#!/usr/bin/env bash
killall -q polybar

# Logs for debugging
echo "---" | tee -a /tmp/polybar.log /tmp/polybar2.log

if [[ "$(xrandr -q | grep -w "connected" | wc -l)" -gt "1" ]]; then 
    SCREENS=($(xrandr --verbose | grep -Fw 'connected' | cut -d ' ' -f 1))
    MAIN_MONITOR=${SCREENS[0]}
    EXT_MONITOR=${SCREENS[1]}
    HWON_PATH=$(for i in /sys/class/hwmon/hwmon*/temp*_input; do echo "$(<$(dirname $i)/name): $(cat ${i%_*}_label 2>/dev/null || echo $(basename ${i%_*})) $(readlink -f $i)"; done | grep CPU | awk {'print $3'})
    SINK=$(pactl list sinks | grep Name: | awk '{print $2} NR==1{exit}')
    export MAIN_MONITOR EXT_MONITOR HWON_PATH SINK
    polybar bar_dual 2>&1 | tee -a /tmp/polybar.log & disown
    polybar bar_dual_external 2>&1 | tee -a /tmp/polybar2.log & disown
else
    polybar bar_single 2>&1 | tee -a /tmp/polybar.log & disown
fi

echo "Bars launched..."
