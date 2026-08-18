# Network Exposure Assessment

## Date
08/13/2026

## Host

CyberLab Ubuntu Server

## Network Interface

- Interface: enp0s1
- IPv4: 192.168.64.2/24
- IPv6: fd90:4cd7:74c:2a3d:a443:cbff:fedc:9c69/64

## Listening TCP Services

### SSH

- Port: 22
- IPv4 listener: 0.0.0.0:22
- IPv6 listener: [::]:22
- Process: sshd
- Purpose: Remote administration

### DNS Resolver

- Port: 53
- IPv4 listeners: 127.0.0.53 and 127.0.0.54
- Process: systemd-resolved
- Purpose: Local DNS resolution

## UDP Services

### DHCP

- Port: 68
- Interface: enp0s1
- Process: systemd-network

### IPv6 DHCP

- Port: 546
- Interface: enp0s1
- Process: systemd-network

## Security Assessment

The system currently exposes SSH as the primary
network-accessible TCP service.

SSH uses public-key authentication.

Root SSH login is disabled.

The firewall is configured to permit SSH access.

DNS resolver listeners are bound to loopback addresses.

## Analyst Observation

The CyberLab host has a relatively small network
attack surface.

The next objective is to verify that the services
identified by local enumeration correspond to the
services actually reachable through the network.
