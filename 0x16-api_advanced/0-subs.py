#!/usr/bin/python3
"""
Function that queries the Reddit API and returns the number of subscribers
(not active users, total subscribers) for a given subreddit.
If an invalid subreddit is given, the function should return 0
"""

import sys
import requests


def number_of_subscribers(subreddit):
    """
    Function that queries the Reddit API
    - If not a valid subreddit, return 0.
    """
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                      "AppleWebKit/537.36 (KHTML, like Gecko) "
                      "Chrome/91.0.4472.124 Safari/537.36"
    }

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


if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Please pass an argument for the subreddit to search.")
    else:
        print("{:d}".format(number_of_subscribers(sys.argv[1])))
