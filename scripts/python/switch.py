#!/bin/python

import argparse
#import requests
import subprocess

parser = argparse.ArgumentParser(description="Turn a switch on or off.")
parser.add_argument("-A", "--all", help="All of them")
#parser.add_argument("-o", "--overhead", help="Overhead lamp")
#parser.add_argument("-s", "--standing", help="Standing lamp")
parser.add_argument("-a", "--amp", help="Amplifier")
args = parser.parse_args()


def request(ip,power):
	subprocess.call(["curl", "-sS", "http://192.168.1." + str(ip) + "/?power=" + str(power)])


if args.all:
	#request(221,args.all)
	#request(222,args.all)
	request(223,args.all)
else:
	#if args.overhead:
		#request(221,args.overhead)
	#if args.standing:
		#request(222,args.standing)
	if args.amp:
		request(223,args.amp)

