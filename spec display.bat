@echo off
echo Checking your system info, Please wait...
ipconfig | find /i "IPv4" 
systeminfo | findstr /c:"Host Name" 
systeminfo | findstr /c:"OS Name" 
systeminfo | findstr /c:"System type" 
systeminfo | findstr /c:"Domain" 
systeminfo | findstr /c:"OS Version" 
systeminfo | findstr /c:"System Model"
systeminfo | findstr /c:"Total Physical Memory" 
systeminfo | findstr /c:"System Manufacturer" 

echo.
echo Service Tag:
wmic bios get serialnumber

echo.
echo Hard Drive Space:
wmic diskdrive get Name, Manufacturer, Model, InterfaceType, MediaType, SerialNumber, size

echo.
echo CPU:
wmic cpu list brief

echo.
echo Memory:
wmic MemoryChip get BankLabel, Capacity, MemoryType, TypeDetail, Speed

echo.
echo BaseBoard:
wmic baseboard get product,Manufacturer,version,serialnumber

pause