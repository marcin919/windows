@ECHO
REM ---------- Ce test prendra quelques secondes, veuillez patienter S.V.P-----------------------
REM -===========================================================================================-
REM -===========================================================================================-

REM -======== veuiller envoyez nous envoyez à la fin le resultat de ce test ====================-

REM  -==============================================-
REM  |                                              |
REM  |        ALL Internet Connexion Test           |
REM  |                                              |
REM  -==============================================-

REM ip-connection-test.cmd
  del presults.txt

echo. ================ Configuration =================================== >>presults.txt
  ipconfig/all >>  presults.txt
echo. ================================================================== >>presults.txt
echo. ================ Communication with France2 Server =============== >>presults.txt
  ping  www.france2.fr >> presults.txt
echo. ================================================================== >>presults.txt
echo. ================ Traceroute France2 ============================== >>presults.txt
  tracert www.france2.fr >> presults.txt
echo. ================================================================== >>presults.txt
echo. ================  Communication with Heise Server  =============== >>presults.txt
  ping www.heise.de>> presults.txt
echo. ================================================================== >>presults.txt
echo. ================ Traceroute Heise ================================ >>presults.txt
  tracert www.heise.de >> presults.txt
echo. ================================================================== >>presults.txt
echo. ================ Communication with FR Server  =================== >>presults.txt
  ping rz.uni-freiburg.de >> presults.txt

echo. ================================================================== >>presults.txt

echo. ============================= Date AND TIME ====================== >>presults.txt
SET TStamp=%DayName% %Day%-%Month%-%Year% %Hour%-%Min%

echo. |date /t >>presults.txt
echo. |time >> presults.txt

echo. ================================= Attention!!!!! ================= >>presults.txt
echo. Veuillez envoyer à Ifpups ce fichier créé S.V.P. pour faciliter le suivi de la performance de notre system  >>presults.txt

notepad presults.txt

start http://www.webtask.org/test-de-debit-internet.html

:end
:exit
