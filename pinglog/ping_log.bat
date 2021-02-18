echo off
cls
echo.
echo.
echo        Ping Log laeuft.
echo.
echo. 

set logfile=%USERPROFILE%\Documents\pinglog_%computername%.txt
echo Computername: %computername% >>%logfile%
echo UserProfile: %USERPROFILE% >>%logfile%

echo        LogFile:      %logfile%
echo        Computername: %computername%
echo        UserProfile:  %USERPROFILE%
echo.
echo.
echo        !!! Bitte Fenster erst am Feierabend schliessen !!!

:START
echo.
echo %DATE% %TIME% >>%logfile%
ping -n 1000 8.8.8.8 >>%logfile%
echo >>%logfile%
echo ***************************** >>%logfile%

GOTO START
