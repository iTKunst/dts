#Retrieve Certificate from nexus repository

export NEXUS_DOMAIN=nexus.dev.ccg-gcc.gc.ca
export SSL_PORT=443

keytool -printcert -sslserver ${NEXUS_DOMAIN}:${SSL_PORT} -rfc