:: Dateien aus dem Quellordner werden in Ziehordner in neu erstellte Verzeichnise im format (jjjj-mm-tt) verschoben. 
:: 10.03.2019

@echo off & setlocal ENABLEDELAYEDEXPANSION

:: Quellordner
set "quelle=D:\TMP\115APPLE"

:: Zielordner
set "ziel=D:\TMP\SortResult"

:: durchlaufe alle Dateien die älter als 30 Tage sind und gebe für die FOR-Schleife den Dateinamen und das Änderungsdatum getrennt mit einer Raute aus, für die Trennung in der Schleife
for /f "tokens=1,2,4 delims=#/" %%a in ('forfiles /D -31 /p "%quelle%" /c "cmd /c echo @file#@fdate" 2^>nul') DO @(
  
  :: entferne die umschließenden Anführungszeichen aus dem Dateinamen
  set "file=%%~a"

  :: Variablen für die Teile des Datums setzen
  set month=%%b
  set year=%%c

  :: Zielordner zusammensetzen
  set "zielordner=%ziel%\!year!\!month!"

  :: Wenn der Ordner noch nicht existiert, erstelle ihn
  if not exist "!zielordner!" md "!zielordner!"

  :: Verschiebe Datei in den neuen Ordner
  move "%quelle%\!file!" "!zielordner!"
)
