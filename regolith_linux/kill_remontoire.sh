#!/bin/bash
# If remontoire is running, kill it.  Otherwise start it.

remontoire_PID=$(pidof remontoire)

if [ -z "$remontoire_PID" ]; then
    /usr/bin/remontoire -s $(printenv I3SOCK) &
else
    kill $remontoire_PID
fi
