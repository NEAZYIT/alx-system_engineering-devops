# Processes and Signals

This repository contains Bash scripts that demonstrate various processes and signal handling in Linux. Below are the tasks and their descriptions:

## Requirements

- All scripts are interpreted on Ubuntu 20.04 LTS.
- All script files must end with a new line.
- A `README.md` file at the root of the project folder is mandatory.
- All Bash script files must be executable.
- Bash scripts must pass Shellcheck (version 0.7.0 via apt-get) without any error.
- The first line of all Bash scripts should be exactly `#!/usr/bin/env bash`.
- The second line of all Bash scripts should be a comment explaining the script's purpose.

## Tasks

### Task 0: What is my PID

- Write a Bash script that displays its own PID.

### Task 1: List your processes

- Write a Bash script that displays a list of currently running processes.
- Must show all processes, for all users, including those without a TTY.
- Display in a user-oriented format.
- Show process hierarchy.

### Task 2: Show your Bash PID

- Using the previous exercise command, write a Bash script that displays lines containing the word 'bash,' allowing you to get the PID of your Bash process.
- You cannot use `pgrep`.
- The third line of your script must be `# shellcheck disable=SC2009`.

### Task 3: Show your Bash PID made easy

- Write a Bash script that displays the PID and process name of processes containing the word 'bash.'
- You cannot use `ps`.

### Task 4: To infinity and beyond

- Write a Bash script that displays "To infinity and beyond" indefinitely.
- Add a `sleep 2` between each iteration.

### Task 5: Don't stop me now!

- Write a Bash script that stops the `4-to_infinity_and_beyond` process using the `kill` command.

### Task 6: Stop me if you can

- Write a Bash script that stops the `4-to_infinity_and_beyond` process without using `kill` or `killall`.

### Task 7: Highlander

- Write a Bash script that displays "To infinity and beyond" with a `sleep 2` between each iteration.
- Displays "I am invincible!!!" when receiving a SIGTERM signal.
- Create a copy of the `6-stop_me_if_you_can` script and name it `67-stop_me_if_you_can` to kill the `7-highlander` process.

### Task 8: Beheaded process

- Write a Bash script that kills the `7-highlander` process.

---

**Repository Information:**

- GitHub Repository: [alx-system_engineering-devops](https://github.com/NEAZYIT/alx-system_engineering-devops)
- Directory: 0x05-processes_and_signals

**Author:**

- NEAZYIT
