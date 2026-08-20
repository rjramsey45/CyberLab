# SSH Pre-Authentication Investigation

## Date

August 19, 2026

## Severity

Low

## Status

Investigated

## Objective

Investigate repeated SSH connections that were closed before successful authentication.

## Environment

- Hostname: cyberlab
- Operating System: Ubuntu Server 24.04.4 LTS
- SSH Port: 22
- Authentication: ED25519 public key
- Root SSH login: Disabled
- Password authentication: Disabled

## Detection

The SSH log monitoring script identified multiple pre-authentication
connections from 192.168.64.1.

The events occurred primarily between:

- 08:53:22
- 08:53:53
- 08:58:18
- 08:59:01

## Investigation

The SSH log summary was reviewed using:

```bash
~/CyberLab/scripts/ssh_log_summary.sh | grep 'Aug 19'


## Observed Activity

Multiple connections from 192.168.64.1 were closed during the
pre-authentication stage.

No successful authentication occurred during the investigated
08:53-08:59 activity.

## Source Analysis

The source address 192.168.64.1 corresponds to the host-side network
address used to access the CyberLab VM.

The activity occurred during intentional SSH testing.

## Assessment

The observed connections were determined to be expected lab activity
rather than evidence of unauthorized access.

The connections did not result in successful authentication.

The server's current SSH configuration prevents password-based
authentication and disables direct root SSH login.

## Security Controls

The following controls were verified:

- SSH public-key authentication enabled
- Password authentication disabled
- Root SSH login disabled
- SSH logging enabled
- SSH log analysis script operational

## Analyst Conclusion

The event demonstrates that the CyberLab environment can detect and
investigate SSH authentication activity.

The repeated pre-authentication connections were attributable to
intentional testing rather than an external attack.

## Lessons Learned

- SSH logs provide useful authentication telemetry.
- Pre-authentication events can identify incomplete authentication attempts.
- Source IP addresses provide important context during investigations.
- Authentication configuration should be verified during incident analysis.
- Security events should be investigated in the context of expected lab activity.
