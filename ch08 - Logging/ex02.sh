# Modify the previous script so that it uses a logging function. Additionally tag each syslog message with "randomly" and include the process ID. Generate 3 random numbers.

#!/bin/bash

function logging() {
    local MESSAGE=$@
    echo "$MESSAGE"
    logger -i -t randomly -p user.info "$MESSAGE"
}

logging "Random number = $RANDOM"
logging "Random number = $RANDOM"
logging "Random number = $RANDOM"