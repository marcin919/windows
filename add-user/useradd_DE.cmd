echon @off

:: DE Windows
:: PC Einrichtung Windows Domäne
:: Lokalen Administrator anlegen und in die lokale Administratoren Gruppe einfügen. Domänen-Admin in die lokale Administratoren Gruppe einfügen

SET /p useradmin=Benutzername für Windows Benutzer mit Administrativen Rechten eingeben (z.B, ServiceAdm) :
SET /p passwd=Password für Windows Benutzer mit Administrativen Rechten eingeben :

::  Lokalen Administrator User für Servicezweke anlegen. 
net user %useradmin% %passwd% /add /active:yes /comment:"Service Administrator" /expires:never /passwordchg:no /passwordreq:yes

::  und in die Administratoren Gruppe einfügen. 
net localgroup "Administratoren" ServiceAdmin /add

::  Netzwerkadministratoren in die Lokale Administratoren-Gruppe einfügen.
net localgroup "Administratoren" administrator "DOMNETZ\administrator" /ADD 

pause
