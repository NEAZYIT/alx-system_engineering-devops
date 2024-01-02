#!/usr/bin/python3
"""
A script to export all employees' TODO lists to a JSON file.

This script fetches data from a REST API and writes it to a JSON file.
The JSON file contains all tasks owned by all employees. The format is:
{ "USER_ID": [ {"username": "USERNAME", "task": "TASK_TITLE",
"completed": TASK_COMPLETED_STATUS}, ... ], ... }

The file name is: todo_all_employees.json

Usage: python3 script_name.py
"""

import json
import requests


def export_all_employee_todo_lists_to_json():
    """
    Fetches and exports the TODO lists for all employees to a JSON file.

    Returns:
    None
    """
    # Fetch all user data
    users_response = requests.get('https://jsonplaceholder.typicode.com/users')
    users_data = users_response.json()

    all_tasks = {}

    for user_data in users_data:
        employee_id = user_data['id']
        username = user_data['username']

        # Fetch todo data for the user
        todos_url = (
            f'https://jsonplaceholder.typicode.com/users/{employee_id}/todos'
        )
        todos_response = requests.get(todos_url)
        todos_data = todos_response.json()

        # Prepare data for JSON
        tasks = [
            {"username": username, "task": todo['title'],
             "completed": todo['completed']}
            for todo in todos_data
        ]

        all_tasks[employee_id] = tasks

    # Write data to JSON
    with open('todo_all_employees.json', 'w') as file:
        json.dump(all_tasks, file)


if __name__ == "__main__":
    export_all_employee_todo_lists_to_json()
