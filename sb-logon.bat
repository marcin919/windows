echo off
Rem - Dieses Script verbindete notwendige Laufwerke.
Rem - In der Samba Konfiguration ist Laufwerk H:\ bereits hinterlegt. Daher muss es hier nicht gemappt werden.
Rem - Benutzerdefinierte logon Befehle werden im H:\logon.cmd ausgefuehrt.
Rem - Der Ping Befehl stellt eine simple WAIT Anweisung dar.

Net USE H: /DELETE
Net USE P: /DELETE
Net USE X: /DELETE


ping /n 8 localhost >nul

Net USE H: \\sbserv\%username% /persistent:no
Net USE P: \\sbserv\project /persistent:no
Net USE X: \\sbserv\share /persistent:no


If EXIST H:\logon.cmd Call H:\logon.cmd
If EXIST X:\Vorlagen\office_vorlagen\office.cmd Call X:\Vorlagen\office_vorlagen\office.cmd

ping sbsmb >NUL
