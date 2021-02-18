REM Copy-Script. 
REM Helperscript für umkopieren von Daten
REM 01.07.2016

REM '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
REM                PURGE          

REM            Die Verzeichnisse und Dateien die nicht mehr 
REM 		   in der Source-Verzeichnis vorhanden sind werden gelöscht.

REM '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''


REM Konstanten für Logdatei
set h=%time:~0,2%
set m=%time:~3,2%
set s=%time:~6,2%
set ms=%time:~9,2%
set CTIME=%ms%
set DATE=%date%

REM set SOURCEDIR=N:\AAAAAAAAAAAAAAAA\WORK
REM set TARGETDIR=D:\Dokumente_WORK
set SOURCEDIR=N:\
set TARGETDIR=L:\



REM Befehl ohne PURGE
robocopy  %SOURCEDIR% %TARGETDIR% /E /XO /LOG:data-%DATE%-%CTIME%.txt /V /ETA /NP /R:5 /XD .recycle .TemporaryItems $RECYCLE.BIN "System Volume Information"

rem C:\       		:: Quelle
rem Y:\ 	  		:: Ziehl
rem /E 				:: Kopiert Unterverzeichnisse, einschließlich leerer Unterverzeichnisse.
rem /XO 			:: Schließt ältere Dateien aus.
rem /LOG:Log.txt 	:: Schreibt einen Log in die Datei Log.txt
rem /NP 			:: Kein Status - der Prozentsatz kopierter Elemente wird nicht angezeigt. Nötig, da sonst der Log ewig lang wird
rem /R:n 			:: Anzahl von Wiederholungsversuchen bei fehlerhaften Kopiervorgängen. Der Standardwert ist 1 Million. ->
rem 			   		verhindert, dass 1 mio mal versucht wird eine Operation auszuführen, die nicht möglich ist ;)
rem /PURGE 			:: löscht die Verzeichnisse und Dateien die nicht mehr in der Source vorhanden sind.
rem /ETA 			:: show Estimated Time of Arrival of copied files.
rem /V   			:: produce Verbose output, showing skipped files.
rem 				:: für weitere Parameter Start->Ausführen->cmd->help robocopy->enter
:EOF
