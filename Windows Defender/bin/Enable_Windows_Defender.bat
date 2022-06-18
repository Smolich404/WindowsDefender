@echo off
::Windows Defender
reg add "HKLM\SYSTEM\ControlSet001\Services\MsSecFlt" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\SecurityHealthService" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\Sense" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\WdBoot" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\WdFilter" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\WdNisDrv" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\WdNisSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\WinDefend" /v "Start" /t REG_DWORD /d "2" /f
::System Guard
reg add "HKLM\SYSTEM\ControlSet001\Services\SgrmAgent" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\SgrmBroker" /v "Start" /t REG_DWORD /d "2" /f
::
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Associations" /f
reg delete "HKLM\Software\Policies\Microsoft\Windows Defender\SmartScreen" /f
reg delete "HKLM\Software\Policies\Microsoft\Windows Defender\Signature Updates" /f
echo Windows Defender has enabled sucessfully! Please restart your PC.
pause