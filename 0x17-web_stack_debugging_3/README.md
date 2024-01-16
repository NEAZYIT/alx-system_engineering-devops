# 0x17. Web Stack Debugging #3

## Description

This project focuses on web stack debugging, specifically addressing issues in an Apache server returning a 500 error. The tasks involve using strace to identify the problem and then creating Puppet manifests to automate the resolution.

## Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Tasks](#tasks)
  - [0. Strace is your friend](#0-strace-is-your-friend)
- [Files](#files)

## Requirements

- Your files will be interpreted on Ubuntu 14.04 LTS.
- All your files should end with a new line.
- A README.md file at the root of the folder of the project is mandatory.
- Your Puppet manifests must pass puppet-lint version 2.1.1 without any errors.
- Your Puppet manifests must run without error.
- Your Puppet manifests first line must be a comment explaining what the Puppet manifest is about.
- Your Puppet manifests files must end with the extension .pp.
- Files will be checked with Puppet v3.4.
- More Info
  - Install puppet-lint
    ```
    $ apt-get install -y ruby
    $ gem install puppet-lint -v 2.1.1
    ```

## Installation

Provide steps to install any dependencies or set up the project.

## Tasks

### 0. Strace is your friend

Using strace, find out why Apache is returning a 500 error. Once you find the issue, fix it and then automate it using Puppet (instead of using Bash as you were previously doing).

#### Requirements:

- Your `0-strace_is_your_friend.pp` file must contain Puppet code.
- You can use whatever Puppet resource type you want for your fix.

#### Example:

```bash
$ curl -sI 127.0.0.1
HTTP/1.0 500 Internal Server Error
Date: Fri, 24 Mar 2017 07:32:16 GMT
Server: Apache/2.4.7 (Ubuntu)
X-Powered-By: PHP/5.5.9-1ubuntu4.21
Connection: close
Content-Type: text/html

$ puppet apply 0-strace_is_your_friend.pp
# Output of Puppet apply

$ curl -sI 127.0.0.1:80
# Output after applying Puppet fix
```

## Files

0-strace_is_your_friend.pp: Puppet manifest file containing the fix for Apache 500 error.

## Author

[NEAZYIT](https://github.com/NEAZYIT)
