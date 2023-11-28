@echo off
setlocal enabledelayedexpansion

REM Specify the drive letter and directory containing the MP3 files
set "drive=C:"
set "directory="

REM Set the text pattern to be removed
set "pattern=[SPOTIFY-DOWNLOADER.COM]"

REM Loop through each MP3 file in the specified directory
for %%F in ("%drive%%directory%\*.mp3") do (
    echo Processing file: "%%F"
    
    set "filename=%%~nF"
    set "extension=%%~xF"
    
    REM Remove the specified text pattern from the filename
    set "newfilename=!filename:%pattern%=!!extension!"
    
    REM Rename the file
    ren "%%F" "!newfilename!"
)

echo Text removed from file names on drive %drive% in directory %directory% successfully.
pause
