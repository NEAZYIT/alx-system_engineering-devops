# Firewall Configuration Guide

This guide provides step-by-step instructions for configuring a firewall (UFW) on web servers. It includes essential information on connectivity testing, port redirection, and crucial warnings about potential pitfalls.

## Task Descriptions:
1) Block All Incoming Traffic but Mandatory Ports
Objective: Install and configure UFW on web-01 to restrict all incoming traffic except for ports 22 (SSH), 443 (HTTPS SSL), and 80 (HTTP).

2) Port Forwarding
Configure web-01 to forward incoming requests from port 8080/TCP to port 80/TCP.

## Warning:
Exercise extreme caution while implementing firewall rules. Mistakenly denying access to port 22/TCP and logging out of the server will result in losing SSH connectivity, making recovery impossible. Upon installing UFW, remember that port 22 is blocked by default; ensure it's unblocked before logging out to avoid lockout scenarios.

## Important Note:
Always exercise caution when working with firewall rules. Make sure you have a way to access your server other than SSH in case something goes wrong, such as through a console or a different method provided by your hosting service.

Before logging out, ensure that you have verified your SSH connection to the server after enabling port 22 to avoid being locked out.

## Author
[NEAZYIT](https://github.com/NEAZYIT)
