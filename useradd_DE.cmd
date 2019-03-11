::  Lokalen Administrator User für Servicezweke anlegen. 
net user ServiceAdmin PassXYZ12 /add /active:yes /comment:"Service Administrator" /expires:never /passwordchg:no /passwordreq:yes

::  und in die Administratoren Gruppe einfügen. 
net localgroup "Administratoren" ServiceAdm /add

::  Netzwerkadministratoren in die Lokale Administratoren-Gruppe einfügen.
net localgroup "Administratoren" administrator "DOMNETZ\administrator" /ADD 
