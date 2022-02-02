#!/bin/sh
ifconfig | grep "ether" | awk '{print $2}'
# ifconfig | grep 'ether' | cut -d " " -f2