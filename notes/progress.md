# CyberLab Progress

## Phase 1 — Linux/SSH Foundation

### Completed
- Ubuntu Server 24.04 installed in UTM
- Created CyberLab VM
- Verified system resources and filesystem
- Learned basic Linux navigation and system commands
- Verified running processes with ps
- Verified process hierarchy with pstree
- Verified SSH service
- Verified SSH listening on port 22
- Created SSH configuration backup
- Generated/configured ED25519 SSH authentication
- Tested SSH public-key authentication
- Disabled root SSH login
- Investigated PasswordAuthentication configuration
- Identified cloud-init SSH configuration override
- Verified SSH configuration with sshd -T
- Created CyberLab directory structure
- Created initial firewall notes
- Reviewed SSH logs with journalctl
- Created ssh_log_summary.sh
- Successfully summarized SSH authentication events

## Current SSH Security State

- SSH port: 22
- Root login: disabled
- Public-key authentication: enabled
- ED25519 key authentication: working
- SSH logging: working
- SSH log analysis script: working

##  Phase 2: Firewall + Network Security

### Firewall Configuration

- Verified UFW was installed and active
- Verified firewall logging was enabled
- Verified default incoming policy was deny
- Verified default outgoing policy was allow
- Verified SSH port 22 was explicitly allowed
- Added HTTP port 80 to the firewall rules for the Apache web server
- Verified IPv4 and IPv6 firewall rules
- Created `firewall_log_summary.sh`
- Used the script to summarize firewall status, rules, listening services, and active network connections

### Network Reconnaissance

- Used `ss -tulpn` to identify listening network services
- Used `ss -tupan` to examine active network connections
- Identified SSH listening on TCP port 22
- Identified Apache listening on TCP port 80
- Identified local DNS services on port 53
- Identified the CyberLab VM network address as `192.168.64.2`
- Identified the host-side address as `192.168.64.1`
- Observed an established SSH connection between the host and CyberLab VM

### Phase 3 — Web Server + HTTP Security

- Verified Apache HTTP Server installation
- Verified Apache service was active and running
- Verified Apache was listening on TCP port 80
- Tested the web server locally with `curl`
- Tested the web server remotely from the Mac host
- Confirmed HTTP `200 OK` responses
- Reviewed Apache access logs
- Reviewed Apache error logs
- Learned how Apache records source IP addresses, timestamps, HTTP methods, requested paths, status codes, response sizes, referrers, and user-agent information
- Identified intentional HTTP requests from the host at `192.168.64.1`
- Tested normal requests using `GET` and `HEAD`
- Generated intentional `404 Not Found` responses using `/admin`, `/test`, and `/does-not-exist`
- Observed a `408 Request Timeout` event in the Apache access log
- Created `web_log_summary.sh`
- Built HTTP status-code summaries
- Built source IP address summaries
- Built requested-path summaries
- Added detection of potential HTTP errors
- Added Apache error-log monitoring
- Added report-generation timestamps to the web-server security script

### Web Server Investigation Skills

- Learned to correlate network exposure with running services
- Learned to correlate HTTP activity with Apache access logs
- Learned the importance of timestamps during security investigations
- Learned to distinguish successful HTTP requests from failed requests
- Learned that `404` responses can indicate either normal user behavior or intentional probing depending on context
- Learned that source IP addresses help establish where activity originated
- Learned to investigate HTTP activity in the context of intentional lab testing

### Current Web Server Security State

- Apache: active
- HTTP port: 80
- UFW: active
- Incoming traffic: denied by default
- SSH port 22: allowed
- HTTP port 80: allowed
- Apache access logging: working
- Apache error logging: working
- Web server log analysis script: working
