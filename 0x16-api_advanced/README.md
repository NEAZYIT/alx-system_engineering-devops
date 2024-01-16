# Reddit API Advanced Project

## Requirements

- **Allowed editors:** vi, vim, emacs
- **Interpreted/compiled on:** Ubuntu 20.04 LTS using Python 3 (version 3.4.3)
- **Files should end with:** a new line
- **First line of all files:** `#!/usr/bin/python3`
- **Imported libraries:** Organized in alphabetical order
- **README.md file:** Mandatory at the project root
- **Code style:** Follow PEP 8
- **File execution:** All files must be executable

## Tasks

| Task | Description |
|------|-------------|
| **Task 0** | Write a function `number_of_subscribers(subreddit)` that queries the Reddit API and returns the total number of subscribers for a given subreddit. If the subreddit is invalid, the function returns 0. No authentication is required. |
| **Task 1** | Write a function `top_ten(subreddit)` that queries the Reddit API and prints the titles of the first 10 hot posts for a given subreddit. If the subreddit is invalid, it prints None. |
| **Task 2** | Write a recursive function `recurse(subreddit, hot_list=[])` that queries the Reddit API and returns a list containing the titles of all hot articles for a given subreddit. If no results are found, it returns None. |
| **Task 3 (Advanced)** | Write a recursive function `count_words(subreddit, word_list)` that queries the Reddit API, parses the titles of hot articles, and prints a sorted count of given keywords. The results are printed in descending order by count, and if the count is the same for separate keywords, they are sorted alphabetically. |

### Task 0: How many subs?

Write a function `number_of_subscribers(subreddit)` that queries the Reddit API and returns the total number of subscribers for a given subreddit. If the subreddit is invalid, the function returns 0. No authentication is required.

```bash
$ python3 0-main.py programming
756024
$ python3 0-main.py this_is_a_fake_subreddit
0
```

### Task 1: Top Ten

Write a function top_ten(subreddit) that queries the Reddit API and prints the titles of the first 10 hot posts for a given subreddit. If the subreddit is invalid, it prints None.

```bash
$ python3 1-main.py programming
1. Firebase founder's response to last week's "Firebase Costs increased by 7000%!"
2. How a 64k intro is made
3. HTTPS on Stack Overflow: The End of a Long Road
...
```

### Task 2: Recurse it!

Write a recursive function recurse(subreddit, hot_list=[]) that queries the Reddit API and returns a list containing the titles of all hot articles for a given subreddit. If no results are found, it returns None.

```bash
$ python3 2-main.py programming
932
$ python3 2-main.py this_is_a_fake_subreddit
None
```

### Task 3: Count it! (Advanced)

Write a recursive function count_words(subreddit, word_list) that queries the Reddit API, parses the titles of hot articles, and prints a sorted count of given keywords. The results are printed in descending order by count, and if the count is the same for separate keywords, they are sorted alphabetically.

```bash
$ python3 100-main.py programming 'react python java javascript scala no_results_for_this_one'
java: 27
javascript: 20
python: 17
react: 17
scala: 4
$ python3 100-main.py programming 'JavA java'
java: 54
$ python3 100-main.py not_a_valid_subreddit 'python java javascript scala no_results_for_this_one'
```

## Author

[NEAZYIT](https://github.com/NEAZYIT)
