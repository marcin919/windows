@echo off

:: Created by: marcin919
:: Name: RoboBackup 
:: Version: Version 2.0
:: Created: 20.07.2015
:: Changed: 18.02.2021

:: Variables 
set BACAKUPNAME=DATA  			& :: Backup name
set SOURCEDIR=D:\  			& :: Source directory
set TARGETDIR=G:\BACKUP\  		& :: Target directory
set VAULT=Backups\%BACAKUPNAME%		& :: Backup vault
set LOGDIR=G:\BACKUP\Logs\   		& :: Path for log files
set SIGNATUR-WD3TB="WD-C65D-C26D" 	& :: Hard drive detection with signature
set PC=%COMPUTERNAME% 			& :: Auxiliary variables for the log file 
set h=%time:~0,2%
set m=%time:~3,2%
set s=%time:~6,2%
set ms=%time:~9,2%
set CTIME=%ms%
set DATE=%date%

cls&&COLOR 3F
echo.
echo -=RoboBackup=- Version 2.0 
echo Vollbackup von %SOURCEDIR% auf %COMPUTERNAME% in Vault: %BACAKUPNAME% auf %TARGETDIR%%VAULT%
echo Du bist angemeldet als %USERNAME%
echo. 
echo [%DATE% @ %TIME%] %USERNAME% Script %BACAKUPNAME% gestartet. >>%LOGDIR%SigAccess.log
echo.
echo Logs
echo ====
echo.
echo Laufzeit von dem Script wird protokoliert unter: %LOGDIR%SigAccess.log
echo Backuplog: %LOGDIR% 
echo. 
powershell -Command Write-Host "VORSICHT!" -foreground "Red"
echo ===========
echo Dieser Backupscript ueberschreibt altes Backup. Die Verzeichnisse 
echo und Dateien aus dem Ziel-Verzeichis" %TARGETDIR%%VAULT%,
echo die sich nicht mehr in der Source-Verzeichnis  %SOURCEDIR% befinden,
powershell -Command Write-Host "WERDEN GELOESCHT" -foreground "Red" 
echo.
echo Hier folgen die Informationen und die Liste von Dateien und Verzeichnisen 
echo auf dem Backuplaufwerk, die sich im Backup Verzeichnis befinden: 
powershell -Command Write-Host %TARGETDIR%%VAULT% -foreground "Red" 
echo. 
dir /4 /TC %TARGETDIR%%VAULT%
echo Ende der Auflistung
echo. 
echo. 
echo Ueberpruefe PC
echo ===============
echo Wurde Script auf dem richtigen PC gestartet?
echo.
echo Diser Script wurde fuer %PC% erstellt.
echo Der Script wurde auf anderen PC gestartet.
IF "%COMPUTERNAME%" == "DESKTOP-G4BUF9T" GOTO PCNAME-OK
REM If-Ausdruck ist falsch
  echo Diser Script ist fuer anderen PC bestimt. Have a nice Day!
  GOTO EOF
:PCNAME-OK
REM If-Ausdruck ist wahr.
  powershell -Command Write-Host "OK." -foreground "Green"
echo.
echo.
  echo Ueberpruefe USB-HDD. 
  echo ===============
  echo Wurde richtiges Backup-Medium (USB-Stick, HDD) angeschlossen?
  echo.
  IF exist %TARGETDIR%\%SIGNATUR-WD3TB% GOTO HDD-OK
  echo Backup Festplatte nicht angescholssen ist.
	GOTO EOF
  
:HDD-OK
  echo.Signatur von %SIGNATUR-WD3TB% ist da! OK.
  echo [%DATE% @ %TIME%] %USERNAME% hat die Signatur die in %TARGETDIR%%VAULT% liegt bei erstelen von %BACAKUPNAME% ueberprüft. >>%LOGDIR%SigAccess.log
  echo [%DATE% @ %TIME%] %USERNAME% Festplatte %SIGNATUR-WD3TB% ist angeschlossen. >>%LOGDIR%SigAccess.log
  REM Jetzt wird der if Zweig verlassen
  
echo.
echo.
echo -----------------------------
echo BACKUP
echo -----------------------------
echo.
ECHO Soll der Backupvorgang gestartet werden?
SET /P CONFIRM=(J)a oder (N)ein?
IF /I "%CONFIRM%"=="J" goto :YES-BACKUP
IF /I "%CONFIRM%"=="N" goto :NO-BACKUP
GOTO EOF

:YES-BACKUP
REM hier landet man wenn der if-Ausdruck wahr ist
echo. 
echo. 
echo -----------------------------
echo Starte das Backup.
echo -----------------------------
echo.
echo. 
echo [%DATE% @ %TIME%] %USERNAME% Kopiervorgang %BACAKUPNAME% beginnt. >>%LOGDIR%SigAccess.log
G:\BACKUP\Scripte\robocopy.exe %SOURCEDIR% %TARGETDIR%%VAULT%  /E /XO /LOG:%LOGDIR%%BACAKUPNAME%-%DATE%-%CTIME%.log /V /NP /R:5 /PURGE /XD .recycle .TemporaryItems .dropbox.cache $RECYCLE.BIN "System Volume Information"
echo [%DATE% @ %TIME%] %USERNAME% Kopiervorgang %BACAKUPNAME% beendet. >>%LOGDIR%SigAccess.log
echo. Backup beendet. Have a nice Day!
GOTO EOF

:NO-BACKUP
echo. Backup abgebrochen. Have a nice Day!

rem robocopy hilfe
rem ==============
rem /E 				:: Kopiert Unterverzeichnisse, einschließlich leerer Unterverzeichnisse.
rem /XO 			:: Schließt ältere Dateien aus.
rem /LOG:Log.txt 		:: Schreibt einen Log in die Datei Log.txt
rem /NP 			:: Kein Status - der Prozentsatz kopierter Elemente wird nicht angezeigt. Nötig, da sonst der Log ewig lang wird
rem /R:n 			:: Anzahl von Wiederholungsversuchen bei fehlerhaften Kopiervorgängen. Der Standardwert ist 1 Million. ->
rem 			   	   verhindert, dass 1 mio mal versucht wird eine Operation auszuführen, die nicht möglich ist ;)
rem /PURGE 			:: löscht die Verzeichnisse und Dateien die nicht mehr in der Source vorhanden sind.
rem /XF .*     			:: was soll das heissen, das kopiert nur die verzeichnisse
rem /L   			:: List only - don't copy, timestamp or delete any files.
rem /X   			:: report all eXtra files, not just those selected.
rem /V   			:: produce Verbose output, showing skipped files.
rem /TS  			:: include source file Time Stamps in the output.
rem /FP  			:: include Full Pathname of files in the output.
rem /NS  			:: No Size - don't log file sizes.
rem /NC  			:: No Class - don't log file classes.
rem /NFL 			:: No File List - don't log file names.
rem /NDL 			:: No Directory List - don't log directory names.
rem /NP  			:: No Progress - don't display % copied.
rem /ETA 			:: show Estimated Time of Arrival of copied files. Wie lange hat der Kopiervorgang gedauert.
rem /NJH 			:: No Job Header.
rem /NJS 			:: No Job Summary.
rem /LOG:file  			:: output status to LOG file (overwrite existing log).
rem /LOG+:file 			:: output status to LOG file (append to existing log).
rem /TEE 			:: output to console window, as well as the log file.

:EOF
PAUSE
