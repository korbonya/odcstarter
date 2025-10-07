@echo off
REM Batch script pour lancer l'application Flutter Web
REM Usage: run_web.bat [mode]
REM Modes: server (défaut), edge, windows, chrome

set MODE=%1
if "%MODE%"=="" set MODE=server

echo.
echo ========================================
echo    Flutter Web Launcher
echo ========================================
echo.

if /i "%MODE%"=="server" (
    echo Mode: Web Server ^(http://localhost:8090^)
    echo.
    echo Ouvrez votre navigateur a: http://localhost:8090
    echo.
    flutter run -d web-server --web-port=8090
) else if /i "%MODE%"=="edge" (
    echo Mode: Microsoft Edge
    echo.
    flutter run -d edge
) else if /i "%MODE%"=="chrome" (
    echo Mode: Google Chrome
    echo.
    flutter run -d chrome
) else if /i "%MODE%"=="windows" (
    echo Mode: Windows Desktop
    echo.
    flutter run -d windows
) else (
    echo Mode inconnu: %MODE%
    echo.
    echo Modes disponibles: server, edge, chrome, windows
    echo.
    echo Exemples:
    echo   run_web.bat server
    echo   run_web.bat edge
    echo   run_web.bat windows
    exit /b 1
)
