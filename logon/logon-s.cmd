echo off
REM - Dieses Script verbindete notwendige Laufwerke.
REM - Frau 

net use F: /DELETE
net use M: /DELETE
net use S: /DELETE
net use T: /DELETE

ping /n 4 localhost >nul

Net USE F: \\Srv03\sys /persistent:no
Net USE M: \\Srv03\hp /persistent:no
Net USE S: \\SRV03\scanner /persistent:no
Net USE T: \\SRV03\Steuerberater /persistent:no
