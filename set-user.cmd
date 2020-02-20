REM TEST

@echo off & setlocal
set /p "VORNAME=Bitte nur den ERSTEN Vornamen eingeben: "
set /p "NACHNAME=Bitte den Nachnamen eingeben: "
set "Vollname=%VORNAME% %NACHNAME%"
set "Benutzername=%VORNAME%"
net user /add %Benutzername% /fullname:"%Vollname%"
net localgroup administratoren %VORNAME% /add
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /v %VORNAME% /t REG_DWORD /d 0 /f
net accounts /maxpwage:unlimited
::COMPUTERNAME AENDERN
REG add "HKLM\SYSTEM\ControlSet001\Control\ComputerName\ComputerName" /v "ComputerName" /t REG_SZ /d "%VORNAME%-PC" /f
REG add "HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters" /v "NV Hostname" /t REG_SZ /d "%VORNAME%-PC" /f
REG add "HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName" /v "ComputerName" /t REG_SZ /d "%VORNAME%-PC" /f
REG add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t REG_SZ /d "%VORNAME%-PC" /f
echo Die Aenderungen werden nach dem nächsten Neustart aktiviert.
shutdown.exe /r /t 01
goto :eof
