#!/bin/zsh

killall -q polybar

while pgre -u $UID -x polybar > /dev/null; do
	sleep 1
done

polybar primary 2>&1 | tee -a /tmp/polybar.log & disown
polybar secondary 2>&1 | tee -a /tmp/polybar.log & disown
