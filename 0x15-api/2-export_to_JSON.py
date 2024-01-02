#!/usr/bin/python3
"""
A script to export an employee's TODO list to a JSON file.

This script fetches data from a REST API and writes it to a JSON file.
The JSON file contains all tasks owned by the employee. The format is:
{ "USER_ID": [{"task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS,
"username": "USERNAME"}, ...]}

Usage: python3 script_name.py employee_id
"""

import json
import requests
import sys


def export_employee_todo_list_to_json(employee_id):
    """
    Fetches and exports the TODO list for the specified employee to a
    JSON file.

    Args:
    employee_id (int): ID of the employee to retrieve TODO progress

    Returns:
    None
    """
    # Fetch user data
    user_url = (
        f'https://jsonplaceholder.typicode.com/users/{employee_id}'
    )
    user_response = requests.get(user_url)
    user_data = user_response.json()
    username = user_data['username']

    # Fetch todo data
    todos_url = (
        f'https://jsonplaceholder.typicode.com/users/{employee_id}/todos'
    )
    todos_response = requests.get(todos_url)
    todos_data = todos_response.json()

    # Prepare data for JSON
    tasks = [
        {"task": todo['title'], "completed": todo['completed'],
         "username": username}
        for todo in todos_data
    ]

    # Write data to JSON
    with open(f'{employee_id}.json', 'w') as file:
        json.dump({str(employee_id): tasks}, file)


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python3 script_name.py employee_id")
        sys.exit(1)

    export_employee_todo_list_to_json(int(sys.argv[1]))
