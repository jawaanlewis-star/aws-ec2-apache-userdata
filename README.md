# aws-ec2-apache-userdata
Built and automated an AWS EC2 Linux web server using Apache, security groups, Elastic IP, and EC2 user-data scripting.

# AWS EC2 Apache Web Server (Automated with User Data)

## Overview
This project deploys an Apache web server on an AWS EC2 Linux instance using an EC2 user-data bootstrap script.

## What I’m demonstrating
- EC2 provisioning
- Linux administration (systemd, packages)
- Security groups (SSH/HTTP)
- User-data automation
- Basic validation (browser + logs)

## Architecture
- EC2 (Amazon Linux)
- Security Group: inbound 22 (restricted), 80 (public)
- Optional: Elastic IP for stable public access

## How to deploy
1. Launch EC2 (Amazon Linux)
2. Paste `user-data/amazon-linux-apache.sh` into User Data
3. Allow inbound HTTP (80)
4. Visit `http://<public-ip>`

## Validation
- `curl localhost`
- Check logs: `/var/log/httpd/access_log`

## Screenshots
(Coming soon)
