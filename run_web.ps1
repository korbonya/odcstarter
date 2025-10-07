# Script PowerShell pour lancer l'application Flutter Web
# Usage: .\run_web.ps1 [mode]
# Modes: server (défaut), edge, windows, chrome

param(
    [string]$mode = "server"
)

Write-Host "🚀 Lancement de l'application Flutter..." -ForegroundColor Cyan

switch ($mode.ToLower()) {
    "server" {
        Write-Host "Mode: Web Server (http://localhost:8090)" -ForegroundColor Green
        Write-Host "Ouvrez votre navigateur à: http://localhost:8090" -ForegroundColor Yellow
        flutter run -d web-server --web-port=8090
    }
    "edge" {
        Write-Host "Mode: Microsoft Edge" -ForegroundColor Green
        flutter run -d edge
    }
    "chrome" {
        Write-Host "Mode: Google Chrome" -ForegroundColor Green
        flutter run -d chrome
    }
    "windows" {
        Write-Host "Mode: Windows Desktop" -ForegroundColor Green
        flutter run -d windows
    }
    default {
        Write-Host "Mode inconnu: $mode" -ForegroundColor Red
        Write-Host "Modes disponibles: server, edge, chrome, windows" -ForegroundColor Yellow
        exit 1
    }
}
