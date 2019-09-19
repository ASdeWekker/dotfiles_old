#!/bin/python

import argparse
import requests
#import subprocess


# Argparse configuration
parser = argparse.ArgumentParser(description="control this ledstrip")
parser.add_argument("-p", "--power", help="to turn on or off")
args = parser.parse_args()


# A function for curling the argument.
#def request(power):
	#subprocess.call(["curl", "-d", "power=" + str(power), "http://192.168.1.220/power"])


# Check if the power argument was passed and execute the function.
if args.power:
	#request(args.power)
	data = {"power": str(args.power)}
	response = requests.post("http://192.168.1.220/power", data=data)
