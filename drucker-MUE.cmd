@echo off

rem ----- Druckerzuweisung per Computername --------
rem Abfrage nach den Computernamen, 
rem mit /i wird Groß-/Kleinschreibung ignoriert
if /i %computername%==S-RD01 goto Drucker1 
if /i %computername%==S-RD02 goto Drucker2 
if /i %computername%==S-RD04 goto Drucker4 
 
goto END
 
:Drucker1
rem jetzt Standarddrucker für diesen Raum festlegen
rundll32 printui.dll PrintUIEntry /in /y /n\\s-rd01\MUE_Xerox_MFP
goto end
 
:Drucker2
rundll32 printui.dll PrintUIEntry /in /y /n\\s-rd02\MUE_Xerox_MFP
goto end
 
:Drucker4
rundll32 printui.dll PrintUIEntry /in /y /n\\s-rd04\MUE_Xerox_MFP
goto end
 
:end
rem ----- EOF: Druckerzuweisung per Computername -----