:: Ports fuer Programm EMCO Installer welche im Windows Firewall geöffnet werden sollen, wenn es eingeschaltet ist.
:: TCP
Netsh Advfirewall Firewall add Rule Name = "EMCO Open Port 135" Dir = in action = allow protocol = TCP localport = 135
Netsh Advfirewall Firewall add Rule Name = "EMCO Open Port 136" Dir = in action = allow protocol = TCP localport = 136
Netsh Advfirewall Firewall add Rule Name = "EMCO Open Port 445" Dir = in action = allow protocol = TCP localport = 445

:: UDP
Netsh Advfirewall Firewall add Rule Name = "EMCO Open Port 136" Dir = in action = allow protocol = UDP localport = 136
Netsh Advfirewall Firewall add Rule Name = "EMCO Open Port 137" Dir = in action = allow protocol = UDP localport = 137
Netsh Advfirewall Firewall add Rule Name = "EMCO Open Port 138" Dir = in action = allow protocol = UDP localport = 138

:: Ports fuer Programm GData welche geöffnet werden sollen, wenn das Windows Firewall eingeschaltet ist.
:: TCP
Netsh Advfirewall Firewall add Rule Name = "EMCO Open Port 7161" Dir = in action = allow protocol = TCP localport = 7161
Netsh Advfirewall Firewall add Rule Name = "EMCO Open Port 7161" Dir = in action = allow protocol = TCP localport = 7161

:: Datei- und Druckfreigabe (gilt nur für Deutsches Windows)
netsh advfirewall firewall set rule group = "Datei- und Druckerfreigabe" new enable=Yes

:: Enable or Disable the Remote Administration Firewall Rule
netsh advfirewall firewall set rule group="Remoteverwaltung" new enable=yes
