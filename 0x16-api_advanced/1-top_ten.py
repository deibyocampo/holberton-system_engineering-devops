#!/usr/bin/python3
"""
module for a funtion
"""
import requests


def top_ten(subreddit):
    """
    returns the numbers of subscribers
    """
    url = 'https://www.reddit.com/r/{}/hot.json'.format(subreddit)
    user_agent = {'User-Agent': 'together'}
    req = requests.get(url, headers=user_agent, allow_redirects=False,
                       params={'limit': 10})
    if req.status_code == 200:
        req = req.json()
        data = req.get('data')
        children = data.get('children')
        if data is not None and children is not None:
            for post in children:
                post_data = post.get('data')
                title = post_data.get('title')
                print(title)
    else:
        print('None')
