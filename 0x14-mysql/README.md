# MySQL Server Configuration and Replication Setup

## Project Overview
This project aims to configure MySQL servers, set up replication between them, and perform backups using Bash scripts. Below are the tasks completed:

## Tasks Overview

### 0. Install MySQL
- Installed MySQL 5.7.x on both web-01 and web-02 servers.

### 1. Let us in!
- Created 'holberton_user' in MySQL on both servers with specific permissions.

### 2. If only you could see what I've seen with your eyes
- Set up a database 'tyrell_corp' with a table 'nexus6' on web-01.

### 3. Quite an experience to live in fear, isn't it?
- Created 'replica_user' for replication on web-01.

### 4. Setup a Primary-Replica infrastructure using MySQL
- Configured MySQL primary on web-01 and replica on web-02 for replication.
- Provided configurations in `4-mysql_configuration_primary` and `4-mysql_configuration_replica`.

### 5. MySQL backup
- Created a Bash script to generate MySQL dump, compress it to a tar.gz file named day-month-year.tar.gz.
- The script accepts the MySQL root password as an argument.

## Usage Guidelines
Ensure all Bash scripts are executable and pass Shellcheck.

## Author
[NEAZYIT]()
