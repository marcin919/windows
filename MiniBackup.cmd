@echo off
echo Das Backup wird gestartet...

xcopy /D /Y "C:\orca_ava" "X:/share/orcabackup"  > X:\share\logs\backuplog.txt
xcopy /E /S /V /Y T:\Documents\Download U:\Backup\Download\ >> U:\Backup\Backuplog.txt
xcopy /E /S /V /Y T:\Documents\Musik U:\Backup\Musik\ >> U:\Backup\Backuplog.txt

echo Das Backup wurde ausgefuehrt! Enter zum Beenden...
pause

REM  Welche Datei von C nach X kopiert werden sollte.

REM  /D:M-T-J  Kopiert nur die an oder nach dem Datum geänderten Dateien.
     REM   Ist kein Datum angegeben, werden nur Dateien kopiert,
     REM   die neuer als die bestehenden Zieldateien sind.
REM  /Y Unterdrückt die Aufforderung zur Bestätigung, dass eine vorhandene Zieldatei überschrieben werden soll.
REM  /E Kopiert alle Unterverzeichnisse (leer oder nicht leer).
REM  /S Kopiert Verzeichnisse und Unterverzeichnisse, die nicht leer sind.
REM  /V Überprüft die Grösse jeder neuen Datei.

REM  Je nach Art der Daten und Bedürfnisse sind auch diese Schalter nützlich:
REM  /C Setzt das Kopieren fort, auch wenn Fehler auftreten.
REM  /H Kopiert auch Dateien mit den Attributen «Versteckt» und «System».
REM  /K Kopiert die Attribute mit. Standardmässig wird sonst das «Schreibgeschützt»-Attribut gelöscht.
REM  /R Überschreibt schreibgeschützte Dateien. Ist speziell im Zusammenhang mit /K zu empfehlen.
REM  /I Falls das Ziel nicht vorhanden ist und mehrere Dateien kopiert werden, nimmt XCOPY an, dass das Ziel ein Verzeichnis ist.
REM  Hilfe: xcopy /? 
REM  Ergebnis wird in Log File gespeichert. 
