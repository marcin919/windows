@ECHO OFF

REM Das root-Verzeichnis der Domäne.
set root=\\mydomain.com\root

ECHO "LOGONSERVER: %LOGONSERVER%"

REM Das persönliche Home-Verzeichnis des Benutzers.
IF EXIST %root%\home\%username% (
  CALL :remount_drive "Z:" "%root%\home\%username%"
) ELSE (
  ECHO %username:~0,3% | findstr "adm" >nul 2>nul && (
	CALL :remount_drive "Z:" "%root%\home\%username:~3%"
  )
)

REM Das persönliche Scan-Verzeichnis des Benutzers.
IF EXIST %root%\scan\%username% (
  CALL :remount_drive "S:" "%root%\scan\%username%"
)

REM T: Temp
net user %username% /domain | findstr "Temp" >nul 2>nul && (
  CALL :remount_drive "T:" "%root%\Shared\Temp"
)

REM S: Share
net user %username% /domain | findstr "Share" >nul 2>nul && (
  CALL :remount_drive "S:" "%root%\Shared\Share"
)


REM Zeit mit dem Logon-Server synchronisieren
net time %logonserver% /set /yes

ECHO Update der Group Policies. Dies kann einige Zeit dauern ...
gpupdate

GOTO :eof

REM Funktion die einen Laufwerks-Buchstaben neu belegt.
:remount_drive
  SET DRIVE=%1
  SET MOUNT_PATH=%2
  ECHO Unmount %DRIVE%
  net use /DELETE %DRIVE% >nul 2>nul
  ECHO Mount %MOUNT_PATH% as %DRIVE%
  net use %DRIVE% %MOUNT_PATH%
EXIT /b
