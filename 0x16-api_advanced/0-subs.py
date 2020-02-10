#!/usr/bin/python3
"""
module for a funtion
"""
import requests


def number_of_subscribers(subreddit):
    """
    returns the numbers of subscribers
    """
    url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)
    user_agent = {'User-Agent': 'Chrome/2602:301:772d:c490:ec20:8e49:3647:8db6'}
    req = requests.get(url, headers=user_agent, allow_redirects=False)
    if req.status_code == 200:
        req = req.json()
        data = req.get('data')
        subscribers = data.get('subscribers')
        if data is not None and subscribers is not None:
            return subscribers
    return 0
