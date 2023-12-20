# Check if running as administrator
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if (-not $isAdmin) {
    # Relaunch the script as administrator
    Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit
}

# Terminate processes related to P1_Client.exe
Get-CimInstance Win32_Process | Where-Object { $_.CommandLine -like '*P1_Client.exe*' } | ForEach-Object { Stop-Process -Id $_.ProcessId -Force }

# Wait for 10 seconds
Start-Sleep -Seconds 10

# Define the folder path and executable name
$folderPath = "C:\EntryPass\P1_Client"
$exeName = "P1_Client.exe"
$exePath = Join-Path $folderPath $exeName

# Start the process again
Start-Process -FilePath $exePath

Write-Host "$exeName relaunched after 10 seconds."
