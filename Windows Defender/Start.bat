@echo off
set "version=0.1"
title Revision - Updates
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
@start /b "Revision - TrustedInstaller" "%~dp0bin\NSudoLG.exe" -U:T -P:E "%~dp0bin\Enable_Windows_Defender.bat"
goto :EOF

:Disable
@start /b "Revision - TrustedInstaller" "%~dp0bin\NSudoLG.exe" -U:T -P:E "%~dp0bin\Disable_Windows_Defender.bat"
goto :EOF

:EOF