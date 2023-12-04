# 0x0F. Load balancer

![loadbalancing ](https://github.com/NEAZYIT/alx-system_engineering-devops/assets/121446147/788a6ed8-2cb7-4775-a5a2-0fcb2afcd981)

## Description
This project aims to fulfill certain requirements using Bash scripting and configuration management tools like Puppet. The tasks involve setting up web servers, configuring Nginx, installing and configuring HAproxy, and automating tasks using Puppet.

## Requirements
- **Allowed Editors:** vi, vim, emacs
- **Environment:** Ubuntu 16.04 LTS
- **Line Ending:** All files must end with a new line
- **Mandatory File:** README.md file at the root of the project folder
- **Executable Scripts:** All Bash script files must be executable
- **Shellcheck:** Scripts must pass Shellcheck (version 0.3.7) without errors
- **Script Header:** First line of Bash scripts: `#!/usr/bin/env bash`

- **Tasks:**
  0. **Double the number of webservers** *(mandatory)*
      - Configure web-02 identical to web-01 using a Bash script
      - Configure Nginx to include a custom header `X-Served-By` with the server's hostname
      - File: `0-custom_http_response_header`
  1. **Install your load balancer** *(mandatory)*
      - Install and configure HAproxy on lb-01 to distribute traffic to web-01 and web-02 using round-robin algorithm
      - File: `1-install_load_balancer`
  2. **Add a custom HTTP header with Puppet** *(advanced)*
      - Use Puppet to automate the configuration of the custom HTTP header `X-Served-By` with the server's hostname
      - File: `2-puppet_custom_http_response_header.pp`

## Execution Steps
1. **Task 0: Double the number of webservers**
 - Run the script `0-custom_http_response_header` to configure web-02 and Nginx headers.

2. **Task 1: Install your load balancer**
 - Execute the script `1-install_load_balancer` to install and configure HAproxy.

3. **Task 2: Add a custom HTTP header with Puppet** *(Advanced)*
 - Use Puppet to automate the setup by running `2-puppet_custom_http_response_header.pp`.

## Author
[NEAZYIT](https://github.com/NEAZYIT)
