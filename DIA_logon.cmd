@echo Hallo %USERNAME%
@echo Sie werden jetzt im Netzwerk angemeldet
@echo =======================================

::DNS-Update
ipconfig /all > V:\adminfreigabe\%COMPUTERNAME%.txt

::LISSI
net use k: \\LISSI\dialyse_prog   /persistent:no

::Indication
net use r: /DELETE
net use r: \\SCHWENNINGEN\ET   /persistent:no

::Shares
net use f: \\SCHWENNINGEN\bilder   /persistent:no
net use p: \\SCHWENNINGEN\Shared   /persistent:no
net use q: \\SCHWENNINGEN\Programme   /persistent:no
net use s: \\SCHWENNINGEN\worddoku   /persistent:no
net use v: \\SCHWENNINGEN\Verteiler   /persistent:no

::Home
net use i: \\SCHWENNINGEN\%username%   /persistent:no

::Indication Registry Eintrag für alle Benutzer
regedit /s R:\AAA\indication.reg

::Intranet Registry Eintrag für alle Benutzer
regedit /s R:\AAA\intranet.reg
