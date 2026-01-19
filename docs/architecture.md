# Architecture – AWS EC2 Apache Web Server

## Overview
This project deploys a single Amazon EC2 instance running Apache on Linux. The instance is publicly accessible over HTTP and is automatically configured using an EC2 user-data script.

## Components
- AWS EC2 (Amazon Linux)
- Security Group:
  - SSH (22) – restricted to my IP
  - HTTP (80) – open to the internet
- Public Subnet in default VPC
- Public IPv4 address
- EC2 User-Data script for automation

## Traffic Flow
1. User opens a browser and visits the public IPv4 address.
2. Request enters AWS through the Internet Gateway.
3. Security Group allows inbound traffic on port 80.
4. EC2 instance receives the request.
5. Apache serves the HTML page from `/var/www/html/index.html`.

## Automation
At launch, EC2 user-data:
- Updates the OS
- Installs Apache
- Enables and starts the Apache service
- Writes a custom HTML file

## Security Notes
- SSH is limited to a single trusted IP.
- Only ports 22 and 80 are open.
- No credentials or secrets are stored in the repository.

## Limitations
- Single instance (no high availability)
- No load balancer
- No HTTPS/TLS
- Publicly exposed for learning purposes
