# 0x1A. Application Server

## Description

This project focuses on setting up and deploying various web applications using Python, Flask, Gunicorn, and Nginx. The tasks involve configuring development and production environments, serving dynamic content, handling routing, and setting up an API server.

## Highlights

| Category             | Points |
|----------------------|--------|
| **Description**      | Setting up and deploying web applications using Python, Flask, Gunicorn, and Nginx. |
| **Requirements**     | - `README.md` file at the root is mandatory. - Python tasks use `python3`. - Config files must have comments. |
| **Bash Scripts**     | - Interpreted on Ubuntu 16.04 LTS. - Files end with a new line. - Bash script files are executable. - Scripts pass Shellcheck. - First line: `#!/usr/bin/env bash`. - Second line: Comment explaining the script. |
| **Task Groups**      | - **Development Environment Setup** - **Production Environment Setup** - **Web Application Expansion** - **API Server Setup** - **Web Dynamic Content** |


## Requirements

- A `README.md` file, at the root of the project folder, is mandatory.
- All Python-related tasks must use `python3`.
- All config files must have comments.

### Bash Scripts

- All files will be interpreted on Ubuntu 16.04 LTS.
- All files should end with a new line.
- All Bash script files must be executable.
- Bash scripts must pass Shellcheck (version 0.3.7-5~ubuntu16.04.1 via apt-get) without any errors.
- The first line of all Bash scripts should be exactly `#!/usr/bin/env bash`.
- The second line of all Bash scripts should be a comment explaining what the script is doing.

## Tasks

### Task 0: Set up development with Python

#### Description

Let’s serve what you built for AirBnB clone v2 - Web framework on web-01. This task is an exercise in setting up your development environment, which is used for testing and debugging your code before deploying it to production.

#### Requirements

- Complete task #3 of your SSH project for web-01.
- Install the net-tools package on your server: `sudo apt install -y net-tools`.
- Git clone your AirBnB_clone_v2 on your web-01 server.
- Configure the file `web_flask/0-hello_route.py` to serve its content from the route `/airbnb-onepage/` on port 5000.
- Your Flask application object must be named `app`.

### Task 1: Set up production with Gunicorn

#### Description

Now that you have your development environment set up, let’s get your production application server set up with Gunicorn on web-01, port 5000. You’ll need to install Gunicorn and any libraries required by your application.

#### Requirements

- Install Gunicorn and any other libraries required by your application.
- The Flask application object should be called `app`.
- Serve the same content from the same route as in the previous task.
- Bind a Gunicorn instance to localhost on port 5000.
- Ensure nothing is listening on port 6000.

### Task 2: Serve a page with Nginx

#### Description

Building on your work in the previous tasks, configure Nginx to serve your page from the route `/airbnb-onepage/`.

#### Requirements

- Configure Nginx to serve your page from the route `/airbnb-onepage/`.
- Nginx must proxy requests to the process listening on port 5000.

### Task 3: Add a route with query parameters

#### Description

Building on what you did in the previous tasks, let’s expand our web application by adding another service for Gunicorn to handle.

#### Requirements

- Configure Nginx to proxy requests to the route `/airbnb-dynamic/number_odd_or_even/(any integer)` to a Gunicorn instance on port 5001.

### Task 4: Serve your AirBnB clone for API

#### Description

Let’s serve what you built for AirBnB clone v3 - RESTful API on web-01.

#### Requirements

- Git clone your AirBnB_clone_v3.

### Task 5: Serve your AirBnB clone - Web dynamic

#### Description

Let’s serve what you built for AirBnB clone - Web dynamic on web-01.

#### Requirements

- Git clone your AirBnB_clone_v4.
- Gunicorn instance should serve content from `web_dynamic/2-hbnb.py` on port 5003.
- Setup Nginx to route `/` to your Gunicorn instance.
- Setup Nginx to serve static assets found in `web_dynamic/static/`.
- Ensure `web_dynamic/static/scripts/2-hbnb.js` is configured to the correct IP.

## Author

[NEAZYIT](https://github.com/NEAZYIT)
