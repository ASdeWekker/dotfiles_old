#!/usr/bin/env python

import subprocess

print("0 - Desktop")
print("1 - Raspberry Pi")
print("Are you going to link some files?")
answer = input("On which system? ")

if answer == "0":
    print("Dekstop")
    subprocess.call(["/home/alex/shn/conf/desktop.sh"])
elif answer == "1":
    print("Raspberry Pi")
    subprocess.call(["/home/alex/shn/conf/rpi.sh"])
else:
    print("beter typen pik")
subprocess.call(["/home/alex/shn/conf/makelinks.sh"])