# SSH Authentication Investigation

## Objective

Investigate SSH authentication activity on the CyberLab Ubuntu server.

## Environment

- Hostname: cyberlab
- Operating System: Ubuntu 24.04.4 LTS
- SSH Port: 22
- Authentication: SSH public key
- Root SSH login: Disabled
- Password authentication: Disabled

## Investigation Commands

```bash
sudo systemctl status ssh
sudo journalctl -u ssh
sudo grep "sshd" /var/log/auth.log
