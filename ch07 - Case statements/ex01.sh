# Create a startup script for an application called sleep­walking­server, which is provided below. The script should be named sleep­walking and accept "start" and "stop" as arguments. If anything other than "start" or "stop" is provided as an argument, display a usage statement: "Usage sleep­walking start|stop" and terminate the script with an exit status of 1.

# To start sleep­walking­server, use this command: "/tmp/sleep­walking­server &" To stop sleep­walking­server, use this command: "kill $(cat /tmp/sleep­walking­server.pid)"


#!/bin/bash

case "$1" in
    start)
        /tmp/sleep-walking-server &
        ;;
    stop)
        kill $(cat /tmp/sleep-calking-server.pid)
        ;;
    *)
    echo "Usage: $0 start|stop"
    exit 1
esac