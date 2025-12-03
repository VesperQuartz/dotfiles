#!/bin/sh
# Times the screen off and puts it to background
swayidle -w \
    timeout 1 'systemctl suspend' \
    resume 'killall -9 swayidle' \
    before-sleep 'gdmflexiserver' &
# Locks the screen immediately
# Kills last background task so idle timer doesn't keep running
kill %%
