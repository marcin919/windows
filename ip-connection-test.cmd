@ECHO
REM ----------Ce test prendra quelques secondes, veuillez patienter S.V.P-----------------------
REM ============================================================
REM=============================================================

REM =========veuiller envoyez nous envoyez à la fin le resultat de ce test =============-

REM  ===============================================
REM  |                              		    |
REM  |        ALL Internet Connexion Test           |
REM  |                                		    |
REM  ===============================================


REM batch_ip_test.bat
  Del presults.txt

Echo. ================ Configuration======= >>presults.txt
  ipconfig/all >> presults.txt
Echo. =========================================================== >>presults.txt
Echo. ================ Communication with France2 Server ============ >>presults.txt
  Ping  www.france2.fr >> presults.txt
Echo. =========================================================== >>presults.txt
Echo. ================Traceroute France2 ============ >>presults.txt
  tracert www.france2.fr >> presults.txt
Echo. =========================================================== >>presults.txt

Echo. ================  Communication with Heise Server  ============ >>presults.txt
  Ping www.heise.de>> presults.txt
Echo. =========================================================== >>presults.txt

Echo. ================Traceroute Heise ============ >>presults.txt
  tracert www.heise.de >> presults.txt
Echo. =========================================================== >>presults.txt

Echo. ================ Communication with FR Server  ============ >>presults.txt
  Ping usiserv.fr.de >> presults.txt



Echo. =========================================================== >>presults.txt

Echo. ============================= Date AND TIME ============================== >>presults.txt
SET TStamp=%DayName% %Day%-%Month%-%Year% %Hour%-%Min%

Echo. |date /t >>presults.txt
Echo. |time >> presults.txt

ECHO. ================================= Attention!!!!! =============================== >>presults.txt
Echo. Veuillez envoyer à Ifpups ce  fichier créé S.V.P. pour faciliter le suivi de la performance de notre system  >>presults.txt

Notepad presults.txt

start http://www.webtask.org/test-de-debit-internet.html

:end
:exit