#!/usr/bin/python3
"""
Retrieve and display TODO list progress for a given employee ID from a
REST API.

Usage: python3 0-gather_data_from_an_API.py employee_id

Arguments:
employee_id: Integer representing the employee ID

Example:
python3 0-gather_data_from_an_API.py 2
"""

import requests
import sys


def display_todo_progress(employee_id):
    """
    Fetches and displays the TODO list progress for the specified employee.

    Args:
    employee_id (int): ID of the employee to retrieve TODO progress

    Returns:
    None
    """
    user_response = requests.get(
        f"https://jsonplaceholder.typicode.com/users/{employee_id}"
    )
    todos_response = requests.get(
        f"https://jsonplaceholder.typicode.com/todos?userId={employee_id}"
    )

    if (
        user_response.status_code != 200
        or todos_response.status_code != 200
    ):
        print("Error: Employee data not found.")
        sys.exit(1)

    employee_data = user_response.json()
    todos_data = todos_response.json()

    total_tasks = len(todos_data)
    completed_tasks = [
        task["title"] for task in todos_data if task["completed"]
    ]

    print(
        f"Employee {employee_data['name']} is done with tasks "
        f"({len(completed_tasks)}/{total_tasks}):"
    )
    for task in completed_tasks:
        print(f"\t{task}")


if __name__ == "__main__":
    if len(sys.argv) != 2 or not sys.argv[1].isdigit():
        print("Usage: python3 0-gather_data_from_an_API.py employee_id")
        sys.exit(1)

    employee_id = int(sys.argv[1])
    display_todo_progress(employee_id)
