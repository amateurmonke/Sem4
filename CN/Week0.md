# macOS Terminal Commands for Computer Networks (CN)

Below is a list of macOS terminal commands for networking tasks, designed for `zsh` or `bash`.

## Networking Commands

### Traceroute (Alternative to `tracert`)

```bash
traceroute <hostname_or_ip>
```

### NSLookup

```bash
nslookup <hostname_or_ip>
```

### Get MAC Address (Equivalent to getmac)

```bash
ifconfig | grep ether
```

### View All Processes (Equivalent to tasklist)

```bash
ps -e
```

### View Routing Table

```bash
netstat -r
```

### Current User Info (Equivalent to whoami)

```bash
whoami
```

### Telnet Command

```bash
telnet <hostname_or_ip>
```

### Pathping Alternative (mytraceroute)

Install mytraceroute (also known as mtr) using Homebrew:

```bash
brew install mtr
```

Run the command:

```bash
mtr <hostname_or_ip>
```

## System Information Commands

### General System Info (Equivalent to systeminfo)

```bash
system_profiler SPNetworkDataType
```

### Manage Services (Equivalent to sc)

```bash
launchctl list
```

### File System Utilities (Equivalent to fsutil)

```bash
diskutil list
```

## Notes

- Homebrew Installation: If brew is not installed, you can add it using:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- Use sudo for commands requiring administrative privileges.
- Replace <hostname_or_ip> with the actual hostname or IP address.

Enjoy networking with macOS!
