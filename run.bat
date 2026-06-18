@echo off
title ANKUSH Server Console
echo ==============================================
echo  ANKUSH RESEARCH CONSOLE — LOCAL SERVER UTILITY
echo ==============================================
echo.

:: Check Node.js / npx
where npx >nul 2>nul
if %ERRORLEVEL% equ 0 (
    echo [INFO] Node.js is installed. Starting http-server on port 8080...
    echo [INFO] Opening http://localhost:8080/ANKUSH.html in browser...
    start "" "http://localhost:8080/ANKUSH.html"
    npx -y http-server -p 8080
    goto end
)

:: Check Python
where python >nul 2>nul
if %ERRORLEVEL% equ 0 (
    echo [INFO] Python is installed. Starting http.server on port 8000...
    echo [INFO] Opening http://localhost:8000/ANKUSH.html in browser...
    start "" "http://localhost:8000/ANKUSH.html"
    python -m http.server 8000
    goto end
)

echo [ERROR] Neither Node.js nor Python was found in your PATH.
echo [ERROR] Google OAuth requires a localhost URL (e.g. http://localhost:8080) to function.
echo [ERROR] Running from file:/// URLs will block Google Sign-In.
echo.
pause

:end
