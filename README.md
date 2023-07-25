# BAT-SCRIPTS
Collection of Bat Scripts that I needed for a specific task
Some of the file are for VHP Visual Hotel Program by SINDATA.net that I've made to make my job easier

# Some may require to right click > run as adminstrator 


# P1 FIREWALL RULES
It configures the right ports that need to allow the EntryPass P1 software.

# DNS CHANGER

Checks for all network adapters and changes their dns for IPV4 % IPV6 to:
IPV4 8888 & 1111
IPV6 to google dns for both primary and secondary you may edit it accordingly to your preffered dns.

# Onedrive Uninstaller

Uninstall onedrive for you

# Display Specs

Display the pc or laptop specs such as ram,cpu,motherboard,drives

# Office Scrubber 
Removes ms office remains after uninstalling ms office,
Alternative would be to use Revo Uninstaller


# ICMP PING FIREWALL RULE IPV4 & IPV6 (RUN AS ADMIN)
This script first enables the existing "Core Networking Diagnostics - ICMP Echo Request" rules for both IPv4 and IPv6 on the Private and Public profiles. Then, it creates a new inbound rule named "Allow Ping (ICMP Echo)" to specifically allow ICMP Echo (ping) requests for both IPv4 and IPv6 on the Private and Public profiles.

Once you run this script with administrative privileges in PowerShell, both the existing rules for ICMP Echo and the new "Allow Ping (ICMP Echo)" rule should be active and enabled, allowing ICMP Echo (ping) requests to pass through the Windows Defender Firewall for the specified profiles.

Fixes issue where you can't ping ip address or pc hostname caused by windows defender firewall

# PING TEST
This script defines a function called Test-Ping, which takes a target (hostname or IP address) as input and uses the Test-Connection cmdlet to perform a single ping to that target. If the ping is successful, it displays a message indicating that the ping was successful; otherwise, it displays a message indicating that the target is not reachable or the ping failed.

The script then creates two arrays, one for hostnames and another for IP addresses. It iterates over each item in these arrays and calls the Test-Ping function to ping each hostname and IP address in turn.
I'm using it to ping our onity keycard server,basically it pings 2 ip address and 2 hostname and replies a message if it responds correctly,you may edit it to your preference.
