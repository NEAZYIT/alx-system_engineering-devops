#!/usr/bin/python3
"""
A script to export an employee's TODO list to a CSV file.

This script fetches data from a REST API and writes it to a CSV file.
The CSV file contains all tasks owned by the employee. The format is:
"USER_ID","USERNAME","TASK_COMPLETED_STATUS","TASK_TITLE"

Usage: python3 script_name.py employee_id
"""

import csv
import requests
import sys


def export_employee_todo_list_to_csv(employee_id):
    """
    Fetches and exports the TODO list for the specified employee to a CSV file.

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

    # Prepare data for CSV
    rows = [
        [employee_id, username, todo['completed'], todo['title']]
        for todo in todos_data
    ]

    # Write data to CSV
    with open(f'{employee_id}.csv', 'w', newline='') as file:
        writer = csv.writer(file, quoting=csv.QUOTE_ALL)
        writer.writerows(rows)


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python3 script_name.py employee_id")
        sys.exit(1)

    export_employee_todo_list_to_csv(int(sys.argv[1]))
