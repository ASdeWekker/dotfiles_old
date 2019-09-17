#!/bin/bash

if [ "${1}" == "pre" ]; then
	/usr/bin/python3 /home/alex/shn/scripts/python/switch.py -a off
	/usr/bin/python3 /home/alex/shn/scripts/python/ledstrip.py -p off
elif [ "${1}" == "post" ]; then
	/usr/bin/python3 /home/alex/shn/scripts/python/switch.py -a on
	/usr/bin/python3 /home/alex/shn/scripts/python/ledstrip.py -p on
fi