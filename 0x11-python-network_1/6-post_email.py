!/usr/bin/python3
"""
Sends a POST request 
"""
import requests
import sys

if _name_ == "_main_":
    url = sys.argv[1]
    email = sys.argv[2]

    data = {'email': email}
    response = requests.post(url, data=data)
    print(response.text)
