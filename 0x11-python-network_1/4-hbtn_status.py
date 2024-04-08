#!/usr/bin/python3
"""
Fetches https://alx-intranet.hbtn.io/status using requests
"""
import requests

if __name__ == "__main__":
    url = 'https://alx-intranet.hbtn.io/status'
    try:
        response = requests.get(url)
        response.raise_for_status()  # Raise exception for bad status codes
        print("Body response:")
        print("\t- type:", type(response.text).__name__)
        print("\t- content:", response.text)
    except requests.exceptions.RequestException as e:
        print("Error fetching URL:", e)

