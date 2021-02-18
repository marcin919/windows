Robocopy Hilfe 

für alle Parameter Start-> Ausführen-> cmd-> help robocopy-> enter

C:\Windows\system32>help robocopy


| Linke Überschrift | Rechte Überschrift |
| ------------------ | ------------------ |
| /E  | 	Kopiert Unterverzeichnisse, einschließlich leerer Unterverzeichnisse. |
|  /XO | Schließt ältere Dateien aus. |
| /LOG:Log.txt |  Schreibt einen Log in die Datei Log.txt |
|  /NP | Kein Status - der Prozentsatz kopierter Elemente wird nicht angezeigt. Nötig, da sonst der Log ewig lang wird |
| /R:n | Anzahl von Wiederholungsversuchen bei fehlerhaften Kopiervorgängen. Der Standardwert ist 1 Million. -> verhindert, dass 1 mio mal versucht wird eine Operation auszuführen, die nicht möglich ist ;)|



 			:: 
 
 			:: 
           
 /PURGE 			:: löscht die Verzeichnisse und Dateien die nicht mehr in der Source vorhanden sind.
 
 /XF .*     		:: was soll das heissen, das kopiert nur die verzeichnisse
 
 /L   			:: List only - don't copy, timestamp or delete any files.
 
 /X   			:: report all eXtra files, not just those selected.
 
 /V   			:: produce Verbose output, showing skipped files.
 
 /TS  			:: include source file Time Stamps in the output.
 
 /FP  			:: include Full Pathname of files in the output.
 
 /NS  			:: No Size - don't log file sizes.
 
 /NC  			:: No Class - don't log file classes.
 
 /NFL 			:: No File List - don't log file names.
 
 /NDL 			:: No Directory List - don't log directory names.
 
 /NP  			:: No Progress - don't display % copied.
 
 /ETA 			:: show Estimated Time of Arrival of copied files. Wie lange hat der Kopiervorgang gedauert.
 
 /NJH 			:: No Job Header.
 
 /NJS 			:: No Job Summary.
 
 /LOG:file  		:: output status to LOG file (overwrite existing log).
 
 /LOG+:file 		:: output status to LOG file (append to existing log).
 
 /TEE 			:: output to console window, as well as the log file.
 
