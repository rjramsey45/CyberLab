# SSH Hardening

## Date
August 6, 2026

## Current Status

Ubuntu Server 24.04.4 LTS is running inside UTM as CyberLab-Ubuntu.

SSH access from the Mac host to the Ubuntu VM is working.

## SSH Configuration

Current effective configuration:

PermitRootLogin no
PubkeyAuthentication yes
PasswordAuthentication no

## Validation

SSH configuration was tested with:

sudo sshd -t

Result:
No errors.

SSH service was verified with:

sudo systemctl status ssh --no-pager

Result:
Active (running)

SSH public-key authentication was successfully observed in the SSH logs:

Accepted publickey for raheem

## Backup

Original SSH configuration was backed up before modification:

/etc/ssh/sshd_config.backup

## Next Step

Disable SSH password authentication after confirming key-based access remains functional.

Target configuration:

PermitRootLogin no
PubkeyAuthentication yes
PasswordAuthentication no

## Steps Taken

1. Connected to the Ubuntu VM using SSH key-based authentication.
2. Created a backup of the SSH configuration file:
   sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.backup
3. Opened the SSH configuration file with Nano:
   sudo nano /etc/ssh/sshd_config
4. Updated the following settings:
   PermitRootLogin no
   PubkeyAuthentication yes
   PasswordAuthentication no
5. Saved the changes and exited Nano.
6. Verified that the SSH configuration contained no syntax errors:
   sudo sshd -t
7. Confirmed the active SSH settings:
   sudo sshd -T | grep -E 'permitrootlogin|pubkeyauthentication|passwordauthentication'
8. Restarted the SSH service:
   sudo systemctl restart ssh
9. Tested SSH access to confirm that key-based authentication was still working after disabling password authentication.
