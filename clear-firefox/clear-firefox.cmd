@echo off

REM 25.01.2021
REM marcin919
REM Version 1.0 
REM Clear your all Firefox Cache Data
REM You can show your Cache Data with 2 Programms MZCookiesView and MZCacheView (Portabel with SyMenu)

REM "Close" Firefox
taskkill /im "firefox.exe"

set FirefoxDataDir=C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles
del /q /s /f "%FirefoxDataDir%"
rd /s /q "%FirefoxDataDir%"
for /d %%x in (C:\Users\%USERNAME%\AppData\Roaming\Mozilla\Firefox\Profiles\*) do del /q /s /f %%x\*sqlite
