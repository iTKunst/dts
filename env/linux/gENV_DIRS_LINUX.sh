#!/bin/bash
# shellcheck disable=SC2086

log_env_enter gENV_DIRS_LINUX

  source settings.sh

  source gENV_CATS.sh
  source gENV_NAMES.sh
  source gENV_TKNS.sh

  export DIR_SLASH=$FOR_SLASH

  export API_DIR=$FOR_SLASH$API
  export APP_DIR=$FOR_SLASH$APP
  export CA_CERT_DIR=$FOR_SLASH$CA_CERT
  export CA_TRUST_DIR=$FOR_SLASH$CA_TRUST
  export CONTENT_DIR=$FOR_SLASH$CONTENT
  export DATA_DIR=$FOR_SLASH$DATA
  export DBG_DIR=$FOR_SLASH$DBG
  export ETC_DIR=$FOR_SLASH$ETC
  export EXTRA_DIR=$FOR_SLASH$EXTRA
  export GEN_DIR=$FOR_SLASH$GEN
  export HME_DIR=$FOR_SLASH$HME
  export LIB_DIR=$FOR_SLASH$LIB
  export LOCAL_DIR=$FOR_SLASH$LOCAL
  export LOG_DIR=$FOR_SLASH$LOG
  export M2_DIR=$FOR_SLASH$M2
  export NEXUS_DATA_DIR=$FOR_SLASH$NEXUS$DASH$DATA
  export OPT_DIR=$FOR_SLASH$OPT
  export SHARE_DIR=$FOR_SLASH$SHARE
  export TMP_DIR=$FOR_SLASH$TMP
  export USR_DIR=$FOR_SLASH$USR
  export VAR_DIR=$FOR_SLASH$VAR



log_env_exit gENV_DIRS_LINUX
