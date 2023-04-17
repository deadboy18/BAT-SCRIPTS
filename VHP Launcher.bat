@echo off

REM Change directory to C:\e1-vhp\VHPPRINT
cd /d C:\e1-vhp\VHPPRINT

REM Start VHPPrintService.exe
start VHPPrintService.exe

REM Change directory to \OpenEdge\bin
cd /d \OpenEdge\bin

REM Start C:\OpenEdge\bin\prowin32.exe -pf c:\e1-vhp\config\vhpAS.pf  -ini c:\e1-vhp\config\vhpAS.ini -p e1-vhpstart.p  -Wa -wpp
start C:\OpenEdge\bin\prowin32.exe -pf c:\e1-vhp\config\vhpAS.pf  -ini c:\e1-vhp\config\vhpAS.ini -p e1-vhpstart.p  -Wa -wpp


REM Start OpenEdge database server with local parameters
_mprosrv C:\e1-vhp\localDB\vhp -N TCP -H localhost -S 2600
