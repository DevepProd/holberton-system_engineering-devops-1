#!/usr/bin/python3
"""
function that queries the Reddit API and returns the number
of subscribers (not active users, total subscribers) for a given
subreddit. If an invalid subreddit is given, the function should return 0.
"""
import requests


def top_ten(subreddit):
    """
    function that queries the Reddit API and returns the number of subscribers
    """
    url = "https://www.reddit.com/r/{}/hot.json?limit=10".format(subreddit)
    dictionaryJson = requests.get(url, headers={"User-Agent": "User"},
                                  allow_redirects=False).json()

    if "data" in dictionaryJson:
        for i in dictionaryJson.get("data").get("children"):
            print("{}".format(i.get("data").get("title")))
    else:
        print(None)
