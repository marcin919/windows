echon @off

::  Lokalen Administrator User für Servicezweke anlegen. 
net user ServiceAdmin PassABC123 /add /active:yes /comment:"Service Administrator" /expires:never /passwordchg:no /passwordreq:yes

::  und in die Administratoren Gruppe einfügen. 
net localgroup "Administratoren" ServiceAdmin /add

::  Netzwerkadministratoren in die Lokale Administratoren-Gruppe einfügen.
net localgroup "Administratoren" administrator "DOMNETZ\administrator" /ADD 

pause
