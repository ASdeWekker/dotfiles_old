#!/bin/python

import argparse
import requests


# Some variables.
ip = "http://192.168.1.220/"

# Argparse configuration.
parser = argparse.ArgumentParser(description="control this ledstrip")
parser.add_argument("-p", "--power", help="to turn on or off")
parser.add_argument("-c", "--color", help="choose a color")
parser.add_argument("-r", "--rgb", help="choose a color via rgb value")
args = parser.parse_args()

# Check if the power argument was passed and execute the function.
if args.power:
	#data = {"power": str(args.power)}
	response = requests.post(ip + "power", data={"power": str(args.power)})

if args.color:
	response = requests.post(ip + "color", data={"color": str(args.color)})

if args.rgb:
	response = requests.post(ip + "rgb", data={"rgb": str(args.rgb)})
