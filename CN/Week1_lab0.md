# Demonstration Of Basic Commands

# 1) Network Configuration Commands: `ipconfig`, `ifconfig`, and `ip`

Learn how to use network configuration commands across **Windows**, **Linux**, and **macOS**.

## **Windows**

- **Command**: `ipconfig`  
  **Description**: Displays network configuration details such as IP address, subnet mask, and default gateway.

### Syntax

```bash
ipconfig [options]

# Display basic network configuration
ipconfig

# Display detailed configuration
ipconfig /all

# Release an IP address
ipconfig /release

# Renew an IP address
ipconfig /renew
```

## Linux

- **Command**: `ifconfig (deprecated, replaced by ip)`
- **Description**: Displays or configures network interfaces.

### Syntax

```bash
ifconfig [interface] [options]
ip addr [options]

# Display all network interfaces (using ifconfig)
ifconfig

# Display all network interfaces (using ip)
ip addr

# Bring up an interface (e.g., eth0)
ifconfig eth0 up
ip link set eth0 up
```

## macOS

- **Command**: `ifconfig`
- **Description**: Displays or configures network interfaces.

### Syntax

```bash
ifconfig [interface] [options]

# Display all network interfaces
ifconfig

# Display details of a specific interface (e.g., en0)
ifconfig en0
```

- **What It’s Used For**:

  - Displays network configuration details like IP address, subnet mask, and default gateway.
  - Can be used to release or renew IP addresses (`/release`, `/renew`).

- **Why It’s Important**:
  - Helps diagnose and resolve network configuration issues, such as incorrect IP settings or connectivity problems.

---

# 2) Network Troubleshooting with `ping`

The `ping` command is used to test connectivity to a specific IP address or hostname.

---

## **Windows, Linux and macOS**

- **Command**: `ping`  
  **Description**: Sends an ICMP echo request to a host to test network connectivity.

### Syntax

```bash
ping [hostname or IP address]

# Ping a domain (e.g., google.com)
ping google.com

# Ping a specific IP address (e.g., 192.168.1.1)
ping 192.168.1.1
```

- **What It’s Used For**:

  - Tests connectivity between your computer and a remote server.
  - Measures packet loss and latency.

- **Why It’s Important**:
  - Quickly identifies if a host is reachable and helps troubleshoot connection problems.

---

# 3) Network Statistics with `netstat`

The `netstat` command provides network statistics and information about active connections.

---

## **Windows, Linux and macOS**

- **Command**: `netstat`  
  **Description**: Displays network statistics, including active connections, routing tables, and network interfaces.

### Syntax

```bash
netstat [options]

# Display all active connections and listening ports
netstat -an

# Display the routing table
netstat -r

# Show network interfaces and statistics
netstat -i
```

- **What It’s Used For**:

  - Displays active network connections, listening ports, and protocol statistics.
  - Can show processes using specific ports with the `-b` option.

- **Why It’s Important**:
  - Useful for monitoring network activity and identifying applications consuming bandwidth or exposing vulnerabilities.

---

# 4) Trace Route with `tracert` (Windows) and `traceroute` (Linux/macOS)

The `tracert` (Windows) or `traceroute` (Linux/macOS) command traces the route packets take to reach a destination, showing each hop along the way.

---

## **Windows**

- **Command**: `tracert`  
  **Description**: Traces the route packets take from your machine to a specified hostname or IP address.

### Syntax

```bash
tracert [hostname or IP address]

# Trace the route to a domain (e.g., google.com)
tracert google.com

# Trace the route to a specific IP address (e.g., 192.168.1.1)
tracert 192.168.1.1
```

## **Linux and macOS**

- **Command**: `traceroute`  
  **Description**: Traces the route packets take to a destination, showing each intermediate hop.

### Syntax

```bash
traceroute [hostname or IP address]

# Trace the route to a domain (e.g., google.com)
traceroute google.com

# Trace the route to a specific IP address (e.g., 192.168.1.1)
traceroute 192.168.1.1
```

- **What It’s Used For**:

  - Traces the route packets take to reach a remote host.
  - Displays each hop and its response time.

- **Why It’s Important**:
  - Helps identify network bottlenecks or misconfigured routers on the path to the destination.

---

# 5) DNS Lookup with `nslookup`

The `nslookup` command is used to query Domain Name System (DNS) servers to obtain domain name or IP address mappings.

---

## **Windows, Linux and macOS**

- **Command**: `nslookup`  
  **Description**: Queries DNS servers to resolve domain names into IP addresses or vice versa.

### Syntax

```bash
nslookup [hostname or IP address]

# Query the IP address for a domain (e.g., example.com)
nslookup example.com

# Query the domain name for an IP address (e.g., 93.184.216.34)
nslookup 93.184.216.34
```

- **What It’s Used For**:

  - Queries the DNS to resolve domain names into IP addresses and vice versa.
  - Provides DNS record details.

- **Why It’s Important**:
  - Diagnoses DNS-related issues like domain resolution failures or DNS server unavailability.

---

# 6) Address Resolution Protocol with `arp`

The `arp` command is used to display and manipulate the Address Resolution Protocol (ARP) table, which maps IP addresses to MAC addresses.

---

## **Windows, Linux and macOS**

- **Command**: `arp`  
  **Description**: Displays or modifies the ARP table that maps IP addresses to MAC addresses on your local network.

### Syntax

```bash
arp [options]

# Display the ARP table
arp -a

# Add a static ARP entry
arp -s [IP address] [MAC address]

# Delete an ARP entry
arp -d [IP address]
```

- **What It’s Used For**:

  - Displays or modifies the ARP (Address Resolution Protocol) cache.
  - Shows mappings between IP addresses and MAC addresses.

- **Why It’s Important**:
  - Helps troubleshoot issues with device communication on a local network.

---

# 7) Network Shell with `netsh` (Windows)

The `netsh` command is used in Windows to configure network settings and manage networking configurations.

---

## **Windows**

- **Command**: `netsh`  
  **Description**: A command-line tool that allows you to configure network settings and manage networking components.

### Syntax

```bash
netsh [context]

# Show wireless network profiles
netsh wlan show profiles

# Configure network interface settings (e.g., for ethernet)
netsh interface ipv4 set address name="Ethernet" static [IP address] [subnet mask] [default gateway]

# Show IP configuration details
netsh interface ipv4 show config
```

## **Linux**

- **Command**: `netsh`  
  **Description**: The netsh command is not available in Linux. Instead, network configuration can be managed using other tools like ifconfig, ip, or nmcli.

### Syntax

```bash
# Display network interfaces and their configuration
ifconfig

# Display routing table
ip route

# Configure network settings using nmcli
nmcli con show
```

## **macOS**

- **Command**: `netsh`  
  **Description**: The netsh command is not available in macOS. For network configuration, macOS uses networksetup and other commands like ifconfig and ip.

### Syntax

```bash
# Display network interfaces
ifconfig

# Show network configuration for a specific interface (e.g., en0)
ifconfig en0

# Configure network settings using networksetup
networksetup -setmanual "Wi-Fi" [IP address] [subnet mask] [default gateway]
```

- **What It’s Used For**:

  - Configures and monitors Windows networking settings.
  - Useful for managing wireless profiles, firewall rules, and network adapters.

- **Why It’s Important**:
  - Enables advanced network troubleshooting and configuration directly from the command line.

---

# 8) Get MAC Address with `getmac`

The `getmac` command is used to display the MAC addresses of network interfaces on your system.

---

## **Windows**

- **Command**: `getmac`  
  **Description**: Displays the MAC addresses of all network interfaces on your system.

### Syntax

```bash
getmac [options]

# Display the MAC addresses of all network interfaces
getmac

# Display detailed information about each network interface, including the MAC address
getmac /v
```

## **Linux**

- **Command**: `ifconfig / ip`  
  **Description**: Linux does not have the getmac command, but you can use ifconfig or ip to display the MAC address of network interfaces.

### Syntax

```bash
# Display the MAC address of all network interfaces (using ifconfig)
ifconfig

# Display the MAC address of a specific interface (e.g., eth0)
ifconfig eth0

# Display the MAC address of all interfaces (using ip)
ip link
```

## **macOS**

- **Command**: `ifconfig`  
  **Description**: macOS does not have the getmac command, but you can use ifconfig to display MAC addresses of network interfaces.

### Syntax

```bash
# Display the MAC address of all network interfaces
ifconfig

# Display the MAC address of a specific interface (e.g., en0)
ifconfig en0

# It fetches the MAC address (Media Access Control address) of the network interface specified (in this case, en0).
networksetup -getmacaddress en0
```

- **What It’s Used For**:

  - Displays the MAC addresses of network interfaces.
  - Shows details of enabled network adapters.

- **Why It’s Important**:
  - Essential for verifying the hardware addresses of network cards, especially when troubleshooting connectivity or security issues.

---

# 9) List Running Processes with `tasklist` (Windows) and Alternatives (Linux/macOS)

The `tasklist` command is used to display a list of currently running processes on a system. Below are platform-specific variations of this command.

---

## **Windows**

- **Command**: `tasklist`  
  **Description**: Displays a list of all currently running processes on your system, including process IDs (PIDs), memory usage, and more.

### Syntax

```bash
tasklist [options]

# Display a list of all running processes
tasklist

# Display the list of processes along with their services
tasklist /svc

# Display detailed information about processes with specified memory usage
tasklist /fi "memusage gt 50000"
```

## **Linux and macOS**

- **Command**: `ps`  
  **Description**: Linux and macOS do not have a direct tasklist command, but ps is used to list running processes.

### Syntax

```bash
# Display a list of all running processes
ps aux

# Display processes along with their process IDs and memory usage
ps -eo pid,comm,%mem

# Display processes
ps -e
```

- **What It’s Used For**:

  - Lists all running processes on the system, including those associated with networking tasks.

- **Why It’s Important**:
  - Identifies processes using high network resources or conflicting with other applications.

---

# 10) View and Modify Routing Table with `route`

The `route` command is used to display or modify the IP routing table of a system. Below are platform-specific variations of this command.

---

## **Windows**

- **Command**: `route`  
  **Description**: Displays or modifies the routing table of the Windows operating system, allowing for management of network routes.

### Syntax

```bash
route [options]

# Display the current routing table
route print

# Add a new route to the routing table
route add [destination] mask [subnet mask] [gateway]

# Delete a route from the routing table
route delete [destination]
```

## **Linux and macOS**

- **Command**: `route`  
  **Description**: Displays or modifies the routing table on Linux and macOS systems. (Note: On newer Linux systems, ip route is often preferred.)

### Syntax

```bash
# Display the current routing table
route -n get default

# Add a new route to the routing table
sudo route add -net [destination] [gateway]

# Delete a route from the routing table
sudo route delete [destination]
```

- **What It’s Used For**:

  - Displays and modifies the routing table.
  - Can be used to add or delete static routes.

- **Why It’s Important**:
  - Helps troubleshoot routing issues in complex network setups, such as multiple gateways or VPN connections.

---

# 11) Display Current User with `whoami`

The `whoami` command is used to display the currently logged-in user's username.

---

## **Windows, Linux and macOS**

- **Command**: `whoami`  
  **Description**: Displays the username of the currently logged-in user.

### Syntax

```bash
# Display the username of the currently logged-in user
whoami
```

- **What It’s Used For**:

  - Displays the username and domain of the currently logged-in user.

- **Why It’s Important**:
  - Helps verify identity and permissions, especially when troubleshooting user-specific network or access issues.

---

# 12) Manage Power Settings with `powercfg` (Windows) and Alternatives

The `powercfg` command is used to manage power settings and troubleshoot energy consumption. Below are platform-specific variations of this command.

---

## **Windows**

- **Command**: `powercfg`  
  **Description**: Configures power settings, creates power reports, and manages power options on Windows systems.

### Syntax

```bash
powercfg [options]

# Generate a report of energy usage and system power efficiency
powercfg /energy

# Display all power schemes (power plans) available
powercfg /list

# Set the active power plan
powercfg /setactive [scheme GUID]
```

## **Linux**

- **Command**: `tlp / pm-utils`  
  **Description**: Linux does not have a direct powercfg command. However, tools like tlp and pm-utils can be used to manage power settings.

### Syntax

```bash
# Display battery and power status (requires tlp)
tlp-stat -b

# Enable or disable power-saving modes (using pm-utils)
pm-suspend
```

## **macOS**

- **Command**: `pmset`  
  **Description**: macOS does not use powercfg, but the pmset command can be used to manage power settings and configure energy-saving options.

### Syntax

```bash
# Display the current power management settings
pmset -g

# Set a specific power management setting (e.g., enable display sleep after 10 minutes)
sudo pmset displaysleep 10
```

- **What It’s Used For**:

  - Analyzes power consumption and provides a report on energy efficiency.

- **Why It’s Important**:
  - Useful for diagnosing power issues that may affect network device performance, such as power-saving modes disabling network adapters.

---

# 13) Display System Information with `systeminfo` (Windows) and Alternatives

The `systeminfo` command is used to display detailed information about the system’s hardware and software configuration. Below are platform-specific variations of this command.

---

## **Windows**

- **Command**: `systeminfo`  
  **Description**: Displays detailed configuration information about the computer's operating system, hardware, and installed software.

### Syntax

```bash
# Display detailed system information
systeminfo
```

## **Linux**

- **Command**: `hostnamectl / uname / lshw`  
  **Description**: Linux does not have a direct systeminfo command, but the following commands can provide similar system information.

### Syntax

```bash
# Display basic system information
hostnamectl

# Display kernel and system architecture information
uname -a

# Display detailed hardware information
sudo lshw -short
```

## **macOS**

- **Command**: `system_profiler`  
  **Description**: macOS does not use the systeminfo command, but system_profiler is the command used to gather detailed system information.

### Syntax

```bash
# Display detailed system information
system_profiler

# Display information about hardware
system_profiler SPHardwareDataType

# Display information about software
system_profiler SPSoftwareDataType
```

- **What It’s Used For**:

  - Displays detailed information about the system, including network configuration and updates.

- **Why It’s Important**:
  - Useful for gathering system details during network troubleshooting or hardware compatibility checks.

---

# 14) Manage Services with `sc` (Windows) and Alternatives

The `sc` command is used to communicate with the Service Control Manager in Windows, enabling users to query, configure, or manage system services. Below are platform-specific variations of this command.

---

## **Windows**

- **Command**: `sc`  
  **Description**: Communicates with the Service Control Manager to manage system services, such as starting, stopping, or querying services.

### Syntax

```bash
sc [command] [service_name]

# Query the status of a service (e.g., dnscache)
sc query dnscache

# Start a specific service (e.g., dnscache)
sc start dnscache

# Stop a specific service (e.g., dnscache)
sc stop dnscache
```

## **Linux**

- **Command**: `systemctl / service`  
  **Description**: Linux uses systemctl (for systems using systemd) or service (for older systems) to manage services, similar to sc in Windows.

### Syntax

```bash
# Query the status of a service (e.g., NetworkManager)
systemctl status NetworkManager

# Start a specific service
sudo systemctl start NetworkManager

# Stop a specific service
sudo systemctl stop NetworkManager
```

## **macOS**

- **Command**: `launchctl`  
  **Description**: macOS uses launchctl to manage services, replacing the functionality provided by sc on Windows.

### Syntax

```bash
# Query the status of a service (e.g., com.apple.dnscache)
sudo launchctl list | grep dnscache

# Start a specific service (e.g., dnscache)
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.dnscache.plist

# Stop a specific service
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.dnscache.plist
```

- **What It’s Used For**:

  - Manages Windows services, such as starting, stopping, or querying the status of networking-related services.

- **Why It’s Important**:
  - Critical for diagnosing issues with services like DNS, DHCP, or networking drivers.

---

# 15) View Wireless Network Information with `netsh wlan show interfaces` (Windows) and Alternatives

The `netsh wlan show interfaces` command is used to display detailed information about the wireless network interfaces in a Windows system. Below are platform-specific variations of this command.

---

## **Windows**

- **Command**: `netsh wlan show interfaces`  
  **Description**: Displays detailed information about the wireless network interfaces, such as the SSID, signal strength, IP address, and more.

### Syntax

```bash
netsh wlan show interfaces

# Display detailed information about the wireless network interfaces
netsh wlan show interfaces
```

## **Linux**

- **Command**: `iwconfig`  
  **Description**: Linux does not have the exact equivalent of netsh wlan show interfaces, but iwconfig provides detailed information about wireless network interfaces.

### Syntax

```bash
# Display detailed information about the wireless network interfaces
iwconfig
```

## **macOS**

- **Command**: `ifconfig`  
  **Description**: macOS does not use the netsh command, but ifconfig provides similar information for network interfaces, including wireless interfaces.

### Syntax

```bash
# Display detailed information about all network interfaces, including wireless
ifconfig en0

# Display detailed information about Wi-Fi interfaces specifically
/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I
```

- **What It’s Used For**:

  - Displays detailed information about wireless network interfaces, including signal strength and SSID.

- **Why It’s Important**:
  - Helps troubleshoot wireless connectivity issues and monitor Wi-Fi performance.

---

# 16) Test Network Connections with `telnet`

The `telnet` command is used to test network connections to a specified hostname or IP address and port. Below are platform-specific details.

---

## **Windows**

- **Command**: `telnet`  
  **Description**: Allows testing of network connections by opening a Telnet session to a specified host and port. (Telnet Client may need to be enabled first in Windows features.)

### Syntax

```bash
telnet [hostname or IP address] [port]

# Connect to example.com on port 80
telnet example.com 80
```

## **Linux**

- **Command**: `telnet`  
  **Description**: Telnet is typically installed by default or can be installed via the package manager. It provides a way to test connections to a remote host and port.

### Syntax

```bash
telnet [hostname or IP address] [port]

# Connect to example.com on port 80
telnet example.com 80
```

To install Telnet if not available:

```bash
sudo apt install telnet   # For Debian-based systems
sudo yum install telnet   # For Red Hat-based systems
```

## **macOS**

- **Command**: `telnet`  
  **Description**: Telnet is not included by default on macOS but can be installed using Homebrew.

### Syntax

```bash
brew install telnet

telnet [hostname or IP address] [port]

# Connect to example.com on port 80
telnet example.com 80
```

- **What It’s Used For**:

  - Connects to remote servers using the Telnet protocol to test open ports or communicate with services.

- **Why It’s Important**:
  - Useful for diagnosing server communication or port accessibility issues.

---

# 17) Analyze Network Paths with `pathping` (Windows) and Alternatives

The `pathping` command is used to trace the route to a destination and analyze packet loss at each hop. It combines the functionality of `tracert` and `ping`. Below are platform-specific details and alternatives for Linux and macOS.

---

## **Windows**

- **Command**: `pathping`  
  **Description**: Combines the functionality of `ping` and `tracert` to trace the route to a destination and test for packet loss at each hop.

### Syntax

```bash
pathping [hostname or IP address]

# Trace the route to google.com and analyze packet loss
pathping google.com
```

## **Linux**

- **Command**: `mtr (My Traceroute)`  
  **Description**: Linux does not include pathping, but the mtr command provides similar functionality, combining traceroute and ping.

### Syntax

```bash
mtr [hostname or IP address]

# Trace the route to google.com and analyze packet loss
mtr google.com
```

To install mtr if not available:

```bash
sudo apt install mtr    # For Debian-based systems
sudo yum install mtr    # For Red Hat-based systems
```

## **macOS**

- **Command**: `mtr`  
  **Description**: macOS does not have pathping, but mtr can be installed to provide similar functionality.

### Syntax

```bash
# Trace the route to google.com and analyze packet loss
mtr google.com
```

To install mtr using Homebrew:

```bash
brew install mtr
```

- **What It’s Used For**:

  - Combines the functionality of `ping` and `tracert` to analyze packet loss and latency across the route to a host.

- **Why It’s Important**:
  - Provides deeper insights into network performance and identifies problematic network hops.

---

# 18) Manage File System Behavior with `fsutil` (Windows) and Alternatives

The `fsutil` command is used to manage and configure file system behaviors in Windows. Below are details for Windows and similar commands for Linux and macOS.

---

## **Windows**

- **Command**: `fsutil`  
  **Description**: Configures file system settings, including enabling or disabling the 8.3 filename generation for backward compatibility.

### Syntax

```bash
fsutil behavior set disable8dot3 [value]

# Disable 8.3 filename creation
fsutil behavior set disable8dot3 1
```

## **Linux**

- **Command**: `tune2fs`  
  **Description**: Linux uses tune2fs to configure file system behavior for ext-based file systems.

### Syntax

```bash
sudo tune2fs -o [option] /dev/[device]

# Enable or disable specific file system options (e.g., journaling)
sudo tune2fs -O ^has_journal /dev/sda1
```

## **macOS**

- **Command**: `diskutil / fsck`  
  **Description**: macOS does not have a direct equivalent to fsutil, but file system behaviors can be managed using diskutil or fsck.

### Syntax

```bash
# Verify or repair a disk volume
diskutil verifyVolume /Volumes/[volume_name]
diskutil repairVolume /Volumes/[volume_name]

# Verify the disk volume
diskutil verifyVolume /Volumes/MacintoshHD
```

- **What It’s Used For**:

  - Performs advanced file and volume management tasks, such as managing filesystems that might interact with network shares.

- **Why It’s Important**:
  - Useful for ensuring optimal performance when using shared network drives or distributed filesystems.

---

# 19) System Management with `wmic` (Windows) and Alternatives

The `wmic` command is used in Windows for system management tasks, such as querying hardware, network configurations, and installed software. Below are platform-specific details and alternatives for Linux and macOS.

---

## **Windows**

- **Command**: `wmic`  
  **Description**: Windows Management Instrumentation Command-line (WMIC) tool enables querying and managing system details.

### Syntax

```bash
wmic [context] [command]

# Retrieve network interface names and MAC addresses
wmic nic get name, macaddress
```

The wmic command is being deprecated in favor of PowerShell cmdlets. For example, the above query can also be performed using PowerShell:

```bash
Get-NetAdapter | Select-Object Name, MacAddress
```

## **Linux**

- **Command**: `lshw, ifconfig, ip`  
  **Description**: Linux does not have wmic, but tools like lshw, ifconfig, and ip provide similar system information.

### Syntax

```bash
# List detailed hardware information
sudo lshw

# Retrieve network interface names and MAC addresses
ifconfig -a | grep -i ether
ip link show
```

To install lshw if not available:

```bash
sudo apt install lshw  # For Debian-based systems
sudo yum install lshw  # For Red Hat-based systems
```

## **macOS**

- **Command**: `system_profiler, ifconfig, networksetup`  
  **Description**: macOS does not support wmic, but system_profiler and networksetup provide similar system management capabilities.

### Syntax

```bash
# Retrieve detailed hardware information
system_profiler SPHardwareDataType

# Get network interface names and MAC addresses
ifconfig en0 | grep ether
networksetup -listallhardwareports
```

- **What It’s Used For**:

  - Executes Windows Management Instrumentation (WMI) queries for detailed information about network adapters and other hardware.

- **Why It’s Important**:
  - Provides low-level details about hardware and network interfaces that can assist in troubleshooting.

---

# 20) User Account Management with `net user` (Windows) and Alternatives

The `net user` command is used to manage user accounts on Windows systems. Below are platform-specific details and alternatives for Linux and macOS.

---

## **Windows**

- **Command**: `net user`  
  **Description**: Displays or modifies user account information.

### Syntax

```bash
net user [username]

# View details about the Administrator account
net user Administrator

# Add a new user
net user NewUser Password123 /add
```

## **Linux**

- **Command**: `id, adduser, passwd`  
  **Description**: Linux uses separate commands to view or manage user accounts.

### Syntax

```bash
# View user details
id username

# Add a new user
sudo adduser newuser

# Change the password for a user
sudo passwd username
```

## **macOS**

- **Command**: `id, dscl`  
  **Description**: macOS provides the id and dscl commands for managing user accounts.

### Syntax

```bash
# View user details
id username

# List all users
dscl . -list /Users

# Add a new user
sudo dscl . -create /Users/newuser
sudo dscl . -passwd /Users/newuser Password123
```

- **What It’s Used For**:

  - Displays or manages user account details, such as permissions and login status.

- **Why It’s Important**:
  - Helps verify or configure user accounts that might impact network resource access or privileges.
