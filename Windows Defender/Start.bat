@echo off
set "version=0.1"
title Windows Defender
goto :Start

:Start
cls
echo.========================================================================================
echo.	
echo.	Press [1] to enable Windows Defender
echo.	Press [2] to disable Windows Defender
echo.
echo.	Press [X] to quit
echo.
echo.========================================================================================
choice /C:12X /N /M "Enter Your Choice: "
if errorlevel == 3 goto :Quit
if errorlevel == 2 goto :Disable
if errorlevel == 1 goto :Enable

:Enable
@start /b "Opline - TrustedInstaller" "%~dp0\NSudoLG.exe" -U:T -P:E "%~dp0\Enable_Windows_Defender.bat"
goto :EOF

:Disable
@start /b "Opline - TrustedInstaller" "%~dp0\NSudoLG.exe" -U:T -P:E "%~dp0\Disable_Windows_Defender.bat"
goto :EOF

:EOF
