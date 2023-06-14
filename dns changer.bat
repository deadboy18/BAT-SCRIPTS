@echo off

echo Changing DNS settings...

REM Retrieve network adapters
for /f "delims=" %%A in ('powershell -Command "Get-NetAdapter | Where-Object {$_.Status -eq 'Up'} | Select-Object -ExpandProperty Name"') do (
    set "adapterName=%%A"

    REM Configure IPv4 DNS
    powershell -Command "Set-DnsClientServerAddress -InterfaceAlias '%%A' -ServerAddresses ('8.8.8.8', '1.1.1.1')"
    
    REM Configure IPv6 DNS
    powershell -Command "Set-NetIPAddress -InterfaceAlias '%%A' -AddressFamily IPv6 -PrefixLength 64"
    powershell -Command "Set-DnsClientServerAddress -InterfaceAlias '%%A' -ServerAddresses ('2001:4860:4860::8888', '2001:4860:4860::8844')"

    echo DNS configuration complete for adapter: !adapterName!
    echo.
)

echo DNS settings changed for all adapters.

pause
