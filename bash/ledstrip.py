#!/bin/python

import sys
import subprocess

params = { "state":sys.argv[1] }

subprocess.call(["curl", "-sS", "http://192.168.1.220/?state=" + params["state"]])

