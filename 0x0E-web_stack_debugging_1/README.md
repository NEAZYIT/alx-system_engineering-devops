# 0x0E. Web stack debugging #1

![ 0x0E  Web stack debugging](https://github.com/NEAZYIT/alx-system_engineering-devops/assets/121446147/d2ba7e60-d7f6-424e-9d37-c7711d4c219e)

## Description
This project focuses on debugging and fixing issues related to Nginx configuration and service availability on Ubuntu 20.04 LTS.

## Requirements
- Allowed editors: vi, vim, emacs
- All files interpreted on Ubuntu 20.04 LTS
- Files should end with a new line
- Mandatory README.md file at the root of the project folder
- Bash script files must be executable
- Bash scripts must pass Shellcheck without errors
- Bash scripts must run without errors
- First line of Bash scripts: `#!/usr/bin/env bash`
- Second line: Comment explaining the script's purpose
- No use of `wget`

## Tasks

### Task 0: Nginx likes port 80 (File: `0-nginx_likes_port_80`)
- Ensure Nginx is running and listening on port 80 for all active IPv4 IPs
- Write a Bash script to automate the server configuration to meet the above requirements
- Verify using `curl 0:80`

Repo:
GitHub repository: [alx-system_engineering-devops](https://github.com/NEAZYIT/alx-system_engineering-devops/edit/master/0x0E-web_stack_debugging_1/0-nginx_likes_port_80)
Directory: 0x0E-web_stack_debugging_1
File: 0-nginx_likes_port_80

### Task 1: Make it sweet and short (File: `1-debugging_made_short`)
- Based on Task 0, create a concise Bash script (5 lines or less)
- Ensure Nginx isn't running as per service status
- No use of `;` or `&&`
- Verify using `curl 0:80`
- Check service status with `service nginx status`

Repo:
GitHub repository: [alx-system_engineering-devops](https://github.com/NEAZYIT/alx-system_engineering-devops/edit/master/0x0E-web_stack_debugging_1/1-debugging_made_short)
Directory: 0x0E-web_stack_debugging_1
File: 1-debugging_made_short

## Author
[NEAZYIT](https://github.com/NEAZYIT)
