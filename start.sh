#!/bin/sh

# wget -O Dynatrace-OneAgent-Linux-x86-1.305.98.20250114-172617.sh "https://yfs56792.live.dynatrace.com/api/v1/deployment/installer/agent/unix/default/latest?arch=x86" --header="Authorization: Api-Token dt0c01.FB5JNMVMBJFQR67H6PFSYAHC.7R6GLQR6R4GWCMDPT5BEGTKE2NQGOFEJ6QGO2UEK6ZUDD5OBWCCQRF3RESZ3ZXCD"

# wget https://ca.dynatrace.com/dt-root.cert.pem ; ( echo 'Content-Type: multipart/signed; protocol="application/x-pkcs7-signature"; micalg="sha-256"; boundary="--SIGNED-INSTALLER"'; echo ; echo ; echo '----SIGNED-INSTALLER' ; cat Dynatrace-OneAgent-Linux-x86-1.305.98.20250114-172617.sh ) | openssl cms -verify -CAfile dt-root.cert.pem > /dev/null

# chmod +x Dynatrace-OneAgent.sh

# /bin/sh Dynatrace-OneAgent-Linux-x86-1.305.98.20250114-172617.sh --set-monitoring-mode=fullstack --set-app-log-content-access=true

export PYTHONPATH=home/site/wwwroot/antenv/lib/python3.11/site-packages
echo "******************* in start.sh *************************************************"
# Start your Flask app with Gunicorn
gunicorn --bind 0.0.0.0:8000 wsgi:app
