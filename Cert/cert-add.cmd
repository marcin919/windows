certutil.exe -f -addstore "TrustedPublisher" "HMS-Cert-VPN.cer"
certutil.exe -f -addstore -f "ROOT" "HMS-Cert-VPN.cer"
