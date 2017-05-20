@echo off
net use * /delete /yes


net use p: \\acrux\public /USER:user pass123
net use r: \\merak\sharedrepo /USER:user pass123
REM net use r: \\192.168.1.24\PiFreigabe /USER:pi pass123
