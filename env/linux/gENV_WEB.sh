#!/bin/bash
# shellcheck disable=SC2086

log_enter gENV_WEB

source settings.sh

  source gENV_CATS.sh
  source gENV_NAMES.sh
  source gENV_TKNS.sh

  export CA_CERT_WEB=$WEB_SLASH$CA_CERT
  export CA_TRUST_WEB=$WEB_SLASH$CA_TRUST
  export COM_WEB=$DOT$COM
  export DTS_WEB=$WEB_SLASH$DTS
  export HTTPS_WEB=$HTTPS$COLON$WEB_SLASH$WEB_SLASH
  export GITT_WEB=$WEB_SLASH$GIT
  export HTML_WEB=$WEB_SLASH$HTML
  export ITK_WEB=$WEB_SLASH$ITK

  export WEB_GIT_HUB=$GIT_HUB$COM_WEB
  export WEB_DTS_GIT=$HTTPS_WEB$GIT_HUB_WEB$ITK_WEB$DTS_WEB



log_exit gENV_WEB
