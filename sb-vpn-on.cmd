REM Cisco AnyConnect Script
REM vpn-on.cmd
REM wir bei erstellen vonVPN Verbindung ausgeführt

net use P: /DELETE
net use x: /DELETE
net use H: /DELETE
net use P: \\10.34.0.7\project
net use X: \\10.34.0.7\share
net use H: \\10.34.0.7\%username%
