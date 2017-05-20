pause

@echo Hallo %USERNAME%
@echo Sie werden jetzt im Netzwerk angemeldet
@echo =======================================

::Indication
  net use r: /DELETE
  net use r: \\SCHWENNINGEN\ET	 		/persistent:no


::DNS-Update
ipconfig /all > V:\Netc\%COMPUTERNAME%.txt


::Indication Registry Eintrag für alle Benutzer
regedit /s R:\AAA\indication.reg

::Intranet Registry Eintrag für alle Benutzer
regedit /s R:\AAA\intranet.reg

pause
