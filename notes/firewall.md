# UFW Firewall Configuration

## Purpose

UFW (Uncomplicated Firewall) is being used as the host-based firewall for the CyberLab Ubuntu server.

## Initial State

Firewall was initially inactive.

## SSH Protection

SSH was explicitly allowed before enabling UFW:

sudo ufw allow ssh

This prevents the firewall from blocking SSH access.

## Firewall Policy

Incoming connections:
DENY by default

Outgoing connections:
ALLOW by default

## SSH

TCP port 22 is allowed for remote administration.

## Validation Commands

sudo ufw status verbose
sudo ufw status numbered
sudo ss -tulpn

## Security Objective

Reduce the server's exposed network attack surface by blocking unsolicited inbound connections while allowing required administrative access.
