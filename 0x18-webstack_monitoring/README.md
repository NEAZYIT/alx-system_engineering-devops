# Webstack Monitoring

## Project Description

This project focuses on setting up monitoring for a webstack using Datadog. It includes tasks such as signing up for Datadog, installing the Datadog agent on servers, and creating dashboards to visualize various metrics. The goal is to enhance the understanding of system performance and facilitate informed scaling decisions.


## Requirements

### General

- **Allowed editors:** vi, vim, emacs
- **Interpretation Environment:** Ubuntu 16.04 LTS
- **File Endings:** All files should end with a new line
- **Mandatory File:** README.md at the root of the project folder
- **Executable Scripts:** All Bash script files must be executable
- **Shellcheck:** Bash scripts must pass Shellcheck (version 0.3.7) without any error
- **Script Headers:** First line of Bash scripts should be `#!/usr/bin/env bash`
- **Script Comments:** Second line of Bash scripts should be a comment explaining the script's purpose


## Tasks

### 0. Sign up for Datadog and install datadog-agent

- **Instructions:**
  1. Sign up for Datadog at [Datadog](https://www.datadoghq.com/)
  2. Use the US1 region
  3. Install datadog-agent on web-01
  4. Create an application key
  5. Copy-paste your DataDog API key and application key to your Intranet user profile
  6. Ensure web-01 is visible in Datadog under the host name XX-web-01
  7. Validate using the provided API
  8. Update server hostname if needed

### 1. Monitor some metrics

- **Instructions:**
  1. Set up a monitor for the number of read requests per second
  2. Set up a monitor for the number of write requests per second

### 2. Create a dashboard

- **Instructions:**
  1. Create a new dashboard
  2. Add at least 4 widgets to monitor desired metrics
  3. Create the answer file `2-setup_datadog` with the dashboard_id on the first line (Use Datadog’s API to get the dashboard_id)


## Author

- [NEAZYIT](https://github.com/NEAZYIT)
