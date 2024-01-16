#!/usr/bin/python3
"""
Function that queries the Reddit API and returns the number of subscribers
(not active users, total subscribers) for a given subreddit.
If an invalid subreddit is given, the function should return 0
"""

import requests


def number_of_subscribers(subreddit):
    """
    Function that queries the Reddit API
    - If not a valid subreddit, return 0.
    """
    headers = {"User-Agent": "MyRedditApp/1.0 by MyUsername"}

    try:
        response = requests.get(
                f"https://www.reddit.com/r/{subreddit}/about.json",
                headers=headers
                )

        if response.status_code == 200:
            return response.json().get("data").get("subscribers")
        else:
            return 0

    except requests.RequestException as e:
        # Handle exceptions, such as invalid subreddit or network issues
        print(f"Error: {e}")
        return 0
