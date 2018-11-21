#!/bin/bash

# start avahi-daemon
# service avahi-daemon start > /dev/null
avahi-daemon -D --no-rlimits > /dev/null
# While running docker run  arguments can be passed so execute that
if [ $# -gt 0 ]
then
	echo -en "Executing : $@\n"
	$@
fi
