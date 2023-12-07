# 0x10. HTTPS SSL

![ssl](https://github.com/NEAZYIT/alx-system_engineering-devops/assets/121446147/ad1c3686-609b-493a-8bcd-6e495ef37a71)

## Description
This project focuses on configuring various servers and settings related to web infrastructure. It involves tasks such as setting up domain zones, configuring HAproxy for SSL termination, and enforcing HTTPS traffic.

## Requirements
- **Allowed editors:** vi, vim, emacs
- **Interpreted on:** Ubuntu 16.04 LTS
- **File endings:** All files should end with a new line
- **Mandatory File:** README.md (at the root of the project folder)
- **Executable Scripts:** All Bash scripts must be executable
- **Shellcheck Compliance:** Scripts should pass Shellcheck (version 0.3.7) without any error
- **Script Comments:** First line of Bash scripts: `#!/usr/bin/env bash`; Second line: Comment explaining the script's purpose

## Tasks
### 0. World wide web (mandatory)
Configure domain zones and create a Bash script to display information about subdomains.

#### Requirements
- Add subdomains www, lb-01, web-01, web-02 to your domain and point them to respective IPs
- Bash script with specific arguments for domain and subdomain
- Output format specified
- Use of `awk` and at least one Bash function

### 1. HAproxy SSL termination (mandatory)
Configure HAproxy for SSL termination for the subdomain www.

#### Requirements
- HAproxy listening on TCP 443, accepting SSL traffic
- Page returned must contain "Holberton School" when querying the root of the domain
- HAproxy configuration file provided as specified

### 2. No loophole in your website traffic (advanced)
Enforce HTTPS traffic by configuring HAproxy to automatically redirect HTTP to HTTPS.

#### Requirements
- Transparent redirection with a 301 status code
- HAproxy configuration file provided as specified

## Autho
[NEAZYIT](https://github.com/NEAZYIT)
