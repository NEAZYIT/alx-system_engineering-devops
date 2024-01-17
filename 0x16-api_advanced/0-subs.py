#!/usr/bin/python3
"""
Queries the Reddit API and returns the number of total subscribers for a given
subreddit.
"""
import requests


def number_of_subscribers(subreddit):
    """Queries the Reddit API to retrieve the number of subscribers
    for a given subreddit.

    Args:
        subreddit (str): The name of the subreddit to query.

    Returns:
        int: The number of subscribers of the subreddit,
        or 0 if the subreddit is invalid.
    """

    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    headers = {
            "User-Agent": "MyScript/1.0",
            "Accept": "application/json"
            }

    try:
        response = requests.get(url, headers=headers, allow_redirects=False)
        response.raise_for_status()

        data = response.json()
        subscribers = data["data"]["subscribers"]
        print(subscribers)
        return subscribers

    except requests.exceptions.RequestException as e:
        print(f"Error fetching subreddit information: {e}")
        return 0
