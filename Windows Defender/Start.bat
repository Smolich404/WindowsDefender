MODE 90,10
@echo off
set "version=0.2"
title Opline - Defender
goto :WU

:WU
cls
echo.========================================================================================
echo.	
echo.	Press [1] to Enable Windows Defender
echo.	Press [2] to Disable Windows Defender
echo.	Press [X] to Quit
echo.
echo.========================================================================================
choice /C:12X /N /M "Enter Your Choice: "
if errorlevel == 3 goto :Quit
if errorlevel == 2 goto :DisableWU
if errorlevel == 1 goto :EnableWU

:Quit
exit

:EnableWU
@start /b "Opline - Enable WinDefend - TrustedInstaller" "%~dp0bin\NSudoLG.exe" -U:T -P:E "%~dp0bin\Enable_Windows_Defender.bat"
goto :EOF

:DisableWU
@start /b "Opline - Disable WinDefend - TrustedInstaller" "%~dp0bin\NSudoLG.exe" -U:T -P:E "%~dp0bin\Disable_Windows_Defender.bat"
goto :EOF

:EOF