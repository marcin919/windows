@echo off

REM - Dieses Script verbindet notwendige Laufwerke über die VPN Verbindung.

NET USE P: /DELETE
NET USE X: /DELETE
NET USE H: /DELETE
NET USE P: \\192.168.1.10\project
NET USE X: \\192.168.1.10\share 
NET USE H: \\192.168.1.10\user1

exit /b 0
