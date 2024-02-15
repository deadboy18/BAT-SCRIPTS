@echo off
setlocal enabledelayedexpansion

REM Set the target directory
set "targetDirectory=C:\Users\HK\Desktop\Auditor monthly report 2024"

REM Get current year
for /f "tokens=1 delims=" %%a in ('wmic os get localdatetime ^| find "."') do set datetime=%%a
set "year=!datetime:~0,4!"

REM Change the current directory to the target directory
cd "%targetDirectory%"

REM Create folders for each month
for %%m in ("JANUARY" "FEBRUARY" "MARCH" "APRIL" "MAY" "JUNE" "JULY" "AUGUST" "SEPTEMBER" "OCTOBER" "NOVEMBER" "DECEMBER") do (
    md "%%~m !year!"
    echo Created folder: %%~m !year!
)

echo Folders created successfully!
pause
