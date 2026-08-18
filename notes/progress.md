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

## Completed 

Firewall configuration and network security monitoring.

After firewall configuration:
- Verify allowed/blocked traffic
- Analyze network connections
- Build security monitoring scripts
- Create simulated security events
- Investigate logs
- Document findings
- Performed network reconnaissance from Mac host
- Used Nmap to identify externally reachable services
- Verified SSH as the only exposed TCP service
- Verified 999 TCP ports were filtered
- Identified OpenSSH version
- Created network exposure baseline
