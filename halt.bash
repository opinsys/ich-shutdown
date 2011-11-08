#!/bin/bash
gcc halt.c -o halt
echo "sammuuko??"

parameters=$(awk '/PM1/ { print $1 }' /proc/ioports  | awk -F- '{ print "0x" $1, substr($2, 0, 1) }' | xargs)

sudo ./halt $parameters

echo "no ei tainnu :/"
