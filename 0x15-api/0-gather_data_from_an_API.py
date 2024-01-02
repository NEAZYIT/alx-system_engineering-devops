#!/usr/bin/python3
"""
Retrieves and displays TODO list progress for a given employee ID using a REST API.
"""

import requests
import sys

def get_employee_progress(employee_id):
    # URL for employee's TODO list
    todo_url = f'https://jsonplaceholder.typicode.com/users/{employee_id}/todos'
    # URL for employee's information
    employee_url = f'https://jsonplaceholder.typicode.com/users/{employee_id}'

    # Fetch data using requests
    with requests.Session() as session_req:
        employee = session_req.get(todo_url)
        employee_name = session_req.get(employee_url)

        json_req = employee.json()
        name = employee_name.json()['name']

        total_tasks = len(json_req)
        completed_tasks = sum(1 for task in json_req if task['completed'])

        print(f"Employee {name} is done with tasks ({completed_tasks}/{total_tasks}):")

        # Display completed tasks
        for task in json_req:
            if task['completed']:
                print(f"\t {task.get('title')}")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python3 script_name.py employee_id")
        sys.exit(1)

    employee_id = sys.argv[1]
    get_employee_progress(employee_id)
