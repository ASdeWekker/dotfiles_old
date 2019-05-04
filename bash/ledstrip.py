#!/bin/python

import argparse
import subprocess

parser = argparse.ArgumentParser(description="Control the ledstrip")

parser.add_argument("-p", "--power", help="Turn on or off")

args = parser.parse_args()


def request(power):
	subprocess.call(["curl", "-sS", "http://192.168.1.220/?power=" + str(power)])


if args.power:
	request(args.power)
