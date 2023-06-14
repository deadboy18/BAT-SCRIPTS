	@ECHO OFF
Color 0a
MODE CON COLS=110
ECHO  Machine:
wmic computersystem get manufacturer,model,name
ECHO CPU:
wmic cpu get name,numberofcores
ECHO BIOS:
wmic bios get manufacturer,serialnumber,smbiosbiosversion
ECHO RAM sticks:
wmic memorychip where "devicelocator != 'SYSTEM ROM'" get capacity,devicelocator,manufacturer,partnumber
ECHO OS:
wmic os get caption,installdate,osarchitecture,totalvisiblememorysize
ECHO Physical drives:
wmic diskdrive get index,firmwarerevision,model,size
ECHO Logical drives:
wmic logicaldisk get description,deviceid,freespace,size,volumename
ECHO Physical network interface(s):
wmic NIC where "physicaladapter=TRUE" get MACAddress,ProductName | findstr /v /C:"Virtual"
ECHO Currently active network interfaces:
wmic nicconfig where ipenabled="TRUE" get description,macaddress,ipaddress,dhcpleaseobtained
PAUSE