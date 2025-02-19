@echo off
setlocal

:: Define variables
set "desktop=%USERPROFILE%\Desktop"
set "file=skillcapped.html"
set "url=https://raw.githubusercontent.com/yourusername/yourrepository/main/skillcapped.html"

:: Delete the old file
if exist "%desktop%\%file%" del "%desktop%\%file%"

:: Download the new file
powershell -Command "Invoke-WebRequest -Uri %url% -OutFile %desktop%\%file%"

:: Open the new file
start "" "%desktop%\%file%"

endlocal