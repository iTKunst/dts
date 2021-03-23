#!/bin/bash
# shellcheck disable=SC2086

log_enter gENV_WEB

source settings.sh

  source gENV_CATS.sh
  source gENV_NAMES.sh
  source gENV_TKNS.sh

  export WEB_SLASH=$FOR_SLASH

  export CA_CERT_WEB=$WEB_SLASH$CA_CERT
  export CA_TRUST_WEB=$WEB_SLASH$CA_TRUST
  export GITT_WEB=$WEB_SLASH$GIT
  export HTML_WEB=$WEB_SLASH$HTML




log_exit gENV_WEBS
