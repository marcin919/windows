@echo off

cd files
start http://localhost
echo Bitte schliessen Sie dieses Fenster sobald Sie fertig sind!
start /b plink.exe -auto_store_key_in_cache -ssh -batch -i private.ppk -N rdptele08@62.222.333.444 -L 80:192.168.1.1:80
start /b plink.exe -auto_store_key_in_cache -ssh -batch -i private.ppk -N rdptele08@62.222.333.444 -L 10000:192.168.1.246:3389
start /b plink.exe -auto_store_key_in_cache -ssh -batch -i private.ppk -N rdptele08@62.222.333.444 -L 11000:192.168.1.31:3389
start /b plink.exe -auto_store_key_in_cache -ssh -batch -i private.ppk -N rdptele08@62.222.333.444 -L 13000:192.168.1.31:3389
start /b plink.exe -auto_store_key_in_cache -ssh -batch -i private.ppk -N rdptele08@62.222.333.444 -L 13000:192.168.1.80:5900

PAUSE 
