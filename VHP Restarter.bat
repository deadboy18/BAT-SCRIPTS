@echo off

REM Change directory to C:\e1-vhp\VHPPRINT
cd /d C:\e1-vhp\VHPPRINT

REM Check if VHPPrintService.exe is running and end its task
tasklist /FI "IMAGENAME eq VHPPrintService.exe" | find /i "VHPPrintService.exe" && taskkill /IM VHPPrintService.exe /F

REM Start VHPPrintService.exe
start VHPPrintService.exe

REM Change directory to \OpenEdge\bin
cd /d \OpenEdge\bin

REM Check if prowin32.exe is running and end its task
tasklist /FI "IMAGENAME eq prowin32.exe" | find /i "prowin32.exe" && taskkill /IM prowin32.exe /F

REM Start C:\OpenEdge\bin\prowin32.exe -pf c:\e1-vhp\config\vhpAS.pf  -ini c:\e1-vhp\config\vhpAS.ini -p e1-vhpstart.p  -Wa -wpp
start C:\OpenEdge\bin\prowin32.exe -pf c:\e1-vhp\config\vhpAS.pf  -ini c:\e1-vhp\config\vhpAS.ini -p e1-vhpstart.p  -Wa -wpp

REM Start OpenEdge database server with local parameters
_mprosrv C:\e1-vhp\localDB\vhp -N TCP -H localhost -S 2600
