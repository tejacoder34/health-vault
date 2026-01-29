@echo off
echo Starting HealthVault System...

start "HealthVault Backend" cmd /k "cd server && node index.js"
start "HealthVault Frontend" cmd /k "npm run dev"

echo System starting...
