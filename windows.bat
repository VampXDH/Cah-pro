@echo off
echo Trying to enable WSL without admin...
echo.

:: Method 1 - Try basic WSL
echo Method 1: Basic WSL...
wsl --set-default-version 2
if %errorlevel% equ 0 (
    echo Success! Installing Ubuntu...
    wsl --install -d Ubuntu
) else (
    echo Need admin rights for WSL setup.
)

:: Method 2 - Check existing distributions
echo.
echo Method 2: Checking existing WSL distros...
wsl -l -q
if %errorlevel% equ 0 (
    echo WSL distros available!
    wsl
) else (
    echo No WSL distros found.
)

pause
