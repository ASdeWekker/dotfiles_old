#!/bin/python

import sys
import subprocess

params = { "power":str(sys.argv[1]) }


def switch(ip, state):
	subprocess.call(["curl", "-sS", "http://192.168.1." + str(ip) + "/?power=" + state])


switch(223,params["power"])
