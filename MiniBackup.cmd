
@echo off
echo Das Backup wird gestartet...
REM  Welche Datei von A nach B kopiert werden sollt. 
REM  /S Kopiert Verzeichnisse und Unterverzeichnisse, die nicht leer sind.
REM  /E Kopiert alle Unterverzeichnisse (leer oder nicht leer).
REM  /V Überprüft die Grösse jeder neuen Datei.
REM  /Y Unterdrückt die Aufforderung zur Bestätigung, dass eine vorhandene Zieldatei überschrieben werden soll.
REM  Ergebnis wird in Log File gespeichert. 

xcopy /D /Y "C:\orca_ava" "X:/share/orcabackup"  > X:\share\logs\backuplog.txt
xcopy /E /S /V /Y T:\Documents\Download U:\Backup\Download\ >> U:\Backup\Backuplog.txt
xcopy /E /S /V /Y T:\Documents\Musik U:\Backup\Musik\ >> U:\Backup\Backuplog.txt

echo Das Backup wurde ausgefuehrt! Enter zum Beenden...
pause
