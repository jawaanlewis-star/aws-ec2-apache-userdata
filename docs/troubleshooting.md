# Troubleshooting – AWS EC2 Apache Web Server (Amazon Linux 2023)

This document captures issues observed during provisioning and validation of the EC2 Apache web server project, based on the instance system log and the troubleshooting steps used during setup.

---

## Environment
- OS: Amazon Linux 2023
- Web Server: Apache (`httpd`)
- Provisioning: EC2 User Data (cloud-init)
- Networking: Default VPC, public access for HTTP (80) and restricted SSH (22)

---

## Issue: Web page does not load in browser (even though instance is healthy)

### Symptoms
- EC2 status checks show **2/2 checks passed**
- Able to connect to the instance via EC2 Instance Connect / SSH
- Browser request to `http://<public-ip>` times out or fails

### Diagnosis
1. Confirm Apache is running and listening on port 80:
   ```bash
   sudo ss -lntp | grep ':80'
