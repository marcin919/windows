echo Backup gestartet
REM  Welche Datei von A nach B kopiert werden sollt. 
REM  Mit D wird überprüft ob die Datei älter ist. 
REM  Y für überschreiben. 
REM  Ergebnis wird in Log File gespeichert. 

xcopy "C:\orca_ava" "X:/share/orcabackup" /D /Y 
