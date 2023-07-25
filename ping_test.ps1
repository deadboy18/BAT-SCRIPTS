function Test-Ping {
    param(
        [string]$Target
    )

    $pingResult = Test-Connection -ComputerName $Target -Count 1 -Quiet

    if ($pingResult) {
        Write-Host "$Target ping successful."
    } else {
        Write-Host "$Target not reachable or ping failed."
    }
}

$hostnames = @("DESKTOP-7H9EC33", "DESKTOP-H1NGLGJ")
$ipAddresses = @("10.3.13.109", "10.3.13.110")

foreach ($hostname in $hostnames) {
    Test-Ping -Target $hostname
}

foreach ($ip in $ipAddresses) {
    Test-Ping -Target $ip
}


# Pause the script execution to keep the PowerShell window open
Read-Host "Press Enter to exit..."