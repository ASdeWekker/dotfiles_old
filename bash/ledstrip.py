#!/bin/python

import requests
import sys

ip = '65'
data = { 'led':sys.argv[1] }

response = requests.post('http://192.168.1.' + ip + '/led', data=data)

