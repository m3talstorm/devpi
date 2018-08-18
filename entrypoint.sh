#!/bin/sh

set -e
set -x

devpi-server --start --theme semantic-ui --host 0.0.0.0 --port 3141

# Tail the log file so we get some output in docker-compose and so we don't exit
tail -f /root/.devpi/server/.xproc/devpi-server/xprocess.log
