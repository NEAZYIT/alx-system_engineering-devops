# Web stack debugging #2

This project covers the debugging and configurations related to web stack management.

![Web stack debugging](https://github.com/NEAZYIT/alx-system_engineering-devops/assets/121446147/6cce46ef-7461-4c4b-ae9f-0a749aa3dd91)

## Requirements

### General

- Files interpreted on Ubuntu 20.04 LTS
- All files end with a new line
- Mandatory README.md file at the project root
- Bash script files are executable
- Bash scripts pass Shellcheck without errors
- Bash scripts run without errors
- First line of Bash scripts: `#!/usr/bin/env bash`
- Second line: Comment explaining the script's purpose

### Tasks

#### Task 0: Run software as another user (mandatory)

- Bash script that accepts one argument
- Runs `whoami` under the user passed as an argument

#### Task 1: Run Nginx as Nginx (mandatory)

- Ensure Nginx runs as the nginx user
- Nginx listens on all active IPs on port 8080
- Bash script configures the container to meet above requirements

#### Task 2: 7 lines or less (#advanced)

- Utilize Task #1's solution for a concise fix
- Bash script must adhere to specific requirements

## Project Structure

### Repository Details

- GitHub Repository: [alx-system_engineering-devops](https://github.com/NEAZYIT/alx-system_engineering-devops)
- Directory: 0x12-web_stack_debugging_2

### Files for Each Task

- Task 0: [0-iamsomeoneelse](https://github.com/NEAZYIT/alx-system_engineering-devops/blob/master/0x12-web_stack_debugging_2/0-iamsomeoneelse)
- Task 1: [1-run_nginx_as_nginx](https://github.com/NEAZYIT/alx-system_engineering-devops/blob/master/0x12-web_stack_debugging_2/1-run_nginx_as_nginx)
- Task 2: [100-fix_in_7_lines_or_less](https://github.com/NEAZYIT/alx-system_engineering-devops/blob/master/0x12-web_stack_debugging_2/100-fix_in_7_lines_or_less)

## Usage

Ensure the scripts are executable before running:

```bash
chmod +x script_name.sh
./script_name.sh argument
```

## Author
[NEAZYIT](https://github.com/NEAZYIT)
