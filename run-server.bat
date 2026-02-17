@echo off
REM Start Halina Interactive Site Server

echo ========================================
echo Halina Interactive Site - Local Server
echo ========================================
echo.

REM Check if Node.js is installed
node --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Node.js is not installed
    echo Download from: https://nodejs.org/
    pause
    exit /b 1
)

echo ✓ Node.js detected
echo.

REM Check if ngrok is installed
ngrok --version >nul 2>&1
if errorlevel 1 (
    echo ngrok is not installed. Do you want to use it for public access? (y/n)
    set /p choice=
    if /i "%choice%"=="y" (
        echo Installing ngrok globally...
        npm install -g ngrok
    )
)

echo.
echo Starting server...
echo.
node server.js

pause
