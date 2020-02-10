#!/usr/bin/python3
"""
Module for display all hot list
"""
import requests


def recurse(subreddit, hot_list=[], after=''):
    """
    recursive displays all hot list
    """
    url = 'https://www.reddit.com/r/{}/hot.json?after={}'.format(
            subreddit, after)
    header = {'User-Agent': 'together'}

    req = requests.get(url, headers=header, allow_redirects=False)
    if req.status_code == 200:
        req = req.json()
        data = req.get('data')
        children = data.get('children')
        for post in children:
            post_data = post.get('data')
            title = post_data.get('title')
            hot_list.append(title)
        after = data.get('after')

        if after is None:
            return hot_list
        else:
            return recurse(subreddit, hot_list, after)
    else:
        return None
