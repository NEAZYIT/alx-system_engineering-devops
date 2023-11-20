# Project Title: Attack is the Best Defense

## Introduction

Security is a complex field, especially in network security where sensitive information transmits across networks. Malicious entities might intercept this traffic, posing significant risks. Unencrypted data becomes vulnerable to interception, leading to potential exploitation of sensitive information like email passwords or credit card details.

In this project, we explore scenarios related to network vulnerabilities, focusing on:

### Task 0: ARP Spoofing and Unencrypted Traffic Sniffing
We examine the interception of unencrypted traffic, utilizing Sendgrid's email service that supports legacy, unsecured communication via telnet. The task involves simulating an unsecured email transmission and sniffing the traffic using tools like tcpdump.

### Task 1: Dictionary Attack
This task involves employing a dictionary attack to exploit password-based authentication. We'll use SSH and a Docker container to perform a brute-force attack on an account, attempting to decipher an 11-character password.

## Tasks Overview

### Task 0 Steps:
- Sniff unencrypted traffic using tcpdump
- Analyze traffic for potential information leakage (Note: authentication details are not verifiable)

### Task 1 Steps:
- Install Docker and run a specific image for SSH access
- Utilize hydra with a password dictionary to attempt a dictionary attack on the SSH account
- Once the password is found, share it in the answer file

## Repo Structure

- [alx-system_engineering-devops](https://github.com/NEAZYIT/alx-system_engineering-devops): The repository containing the project files.
- Directory: attack_is_the_best_defense
  - `0-sniffing`: Script to simulate unencrypted traffic sniffing
  - `1-dictionary_attack`: Instructions for performing a dictionary attack

## Author
- [NEAZYIT](https://github.com/NEAZYIT)
