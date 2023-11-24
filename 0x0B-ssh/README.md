# 0x0B. SSH

## Description
This repository contains scripts and configurations related to SSH tasks for system engineering and DevOps.

## Prerequisites
- Ubuntu 20.04 LTS
- Supported editors: vi, vim, emacs

## Project Structure
The project is structured into various tasks, each addressing specific SSH-related functionalities.

### Task 0: Use a private key
- Script: [0-use_a_private_key](./0x0B-ssh/0-use_a_private_key)
- Description: Connect to a server using ssh and a private key without using -l flag.
- Usage:
   ```bash
   ./0x0B-ssh/0-use_a_private_key
   ```

### Task 2: Client configuration file
- File: [2-ssh_config](./0x0B-ssh/2-ssh_config)
- Description: SSH client configuration to connect to a server without a password.
- Usage: Configure the SSH client according to the provided file.

### Task 3: Let me in!
- File: [3-ssh_public_key](./0x0B-ssh/3-ssh_public_key)
- Description: Public SSH key to be added to the server to allow connection using the ubuntu user.

### Task 4: Client configuration file (w/ Puppet)
- File: [100-puppet_ssh_config.pp](./0x0B-ssh/100-puppet_ssh_config.pp)
- Description: Puppet configuration for the SSH client to connect without password authentication.
- Usage:
  ```bash
  sudo puppet apply 100-puppet_ssh_config.pp
  ```

## Using the Scripts

### Cloning the Repository
1. Open Terminal.

2. Clone the repository using the following command:
   ```bash
   git clone https://github.com/NEAZYIT/alx-system_engineering-devops
   ```

### Author
[NEAZYIT](https://github.com/NEAZYIT)
