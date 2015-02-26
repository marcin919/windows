REM Ports fuer Programm EMCO installer welche geöffnet werden sollen, wenn die Windows Firewall eingeschaltet ist.
REM TCP
Netsh Advfirewall Firewall add Rule Name = "EMCO Open Port 135" Dir = in action = allow protocol = TCP localport = 135
Netsh Advfirewall Firewall add Rule Name = "EMCO Open Port 136" Dir = in action = allow protocol = TCP localport = 136
Netsh Advfirewall Firewall add Rule Name = "EMCO Open Port 445" Dir = in action = allow protocol = TCP localport = 445

REM UDP
Netsh Advfirewall Firewall add Rule Name = "EMCO Open Port 136" Dir = in action = allow protocol = UDP localport = 136
Netsh Advfirewall Firewall add Rule Name = "EMCO Open Port 137" Dir = in action = allow protocol = UDP localport = 137
Netsh Advfirewall Firewall add Rule Name = "EMCO Open Port 138" Dir = in action = allow protocol = UDP localport = 138

REM Datei- und Druckfreigabe
netsh advfirewall firewall set rule group = "Datei- und Druckerfreigabe" new enable=Yes

REM Enable or Disable the Remote Administration Firewall Rule
netsh advfirewall firewall set rule group="Remoteverwaltung" new enable=yes
