@echo off
net use * /delete /yes

net use p: \\server\public /USER:user pass123
net use r: \\server\sharedrepo /USER:user pass123
net use r: \\192.168.1.240\PiFreigabe /USER:pi pass123

exit /b 0
