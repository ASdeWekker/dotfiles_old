#!/bin/python

import argparse
import requests


# Argparse configuration.
parser = argparse.ArgumentParser(description="control this ledstrip")
parser.add_argument("-p", "--power", help="to turn on or off")
args = parser.parse_args()

# Check if the power argument was passed and execute the function.
if args.power:
	#data = {"power": str(args.power)}
	response = requests.post("http://192.168.1.220/power", data={"power": str(args.power)})
