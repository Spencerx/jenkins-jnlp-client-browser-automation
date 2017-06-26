#!/bin/bash

# start xvfb
Xvfb :10 -ac &
export DISPLAY=:10

# for testing
#tail -f /dev/null

# calling the entrypoint of the parent
/usr/local/bin/start.sh "$@"
