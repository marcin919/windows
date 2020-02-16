@echo off

::	 	Ping Subnet Tool
:: 		Version 2020-02-15 
:: 		marcin919

color 26&&cls&&title Ping Subnet (2020-02-15)

for /f "tokens=2,3 delims={,}" %%a in ('"WMIC NICConfig where IPEnabled="True" get DefaultIPGateway /value | find "I" "') do echo The current defaut gateway from your computer: %%~a 

set "CURRDIR=%cd%"
set result=%cd%\Ping_Subnet_active.log
set result=%cd%\Ping_Subnet_down.log
echo Active IP >Ping_Subnet_active.log
echo. >>Ping_Subnet_active.log
echo Down_IP >Ping_Subnet_down.log
echo. >>Ping_Subnet_down.log

SET count=0
SET /p subnet=Please enter IP address range (for example, 192.168.0) :

:start
SET /a count=%count%+1

ECHO.Trying %subnet%.%count% & ECHO.

ping -n 1 -w 1000 %subnet%.%count% >nul  
IF %errorlevel%==0 echo %subnet%.%count% ACTIVE >>Ping_Subnet_active.log  
IF %errorlevel%==1 echo %subnet%.%count% DOWN >>Ping_Subnet_down.log

IF %count%==254 goto :eof

GOTO start
