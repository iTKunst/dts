#!/bin/bash
# shellcheck disable=SC2086

log_env_enter gENV_DIRS_OS

  source gENV_CATS.sh
  source gENV_NAMES.sh
  source gENV_TKNS.sh

  export DIR_SLASH=$FOR_SLASH

  export ANCH_DIR=$DIR_SLASH$ANCH
  export CA_CERT_DIR=$DIR_SLASH$CA_CERT
  export CA_TRUST_DIR=$DIR_SLASH$CA_TRUST
  export CONTENT_DIR=$DIR_SLASH$CONTENT
  export DATA_DIR=$DIR_SLASH$DATA
  export DBG_DIR=$DIR_SLASH$DBG
  export ETC_DIR=$DIR_SLASH$ETC
  export GIS_DIR=$DIR_SLASH$GIS
  export GITT_DIR=$DIR_SLASH$GIT
  export GLBL_DIR=$DIR_SLASH$GLBL
  export GO_DIR=$DIR_SLASH$GO
  export GRDL_DIR=$DIR_SLASH$GRDL
  export HTML_DIR=$DIR_SLASH$HTML
  export JBOSS_DIR=$DIR_SLASH$JBOSS
  export KEYCLOAK_DIR=$DIR_SLASH$KEYCLOAK
  export KUBE_DIR=$DIR_SLASH$KUBE
  export LINUX_DIR=$DIR_SLASH$LINUX
  export MISC_DIR=$DIR_SLASH$MISC
  export MS_DIR=$DIR_SLASH$MS
  export MVN_DIR=$DIR_SLASH$MVN
  export MYSQL_DIR=$DIR_SLASH$MYSQL
  export NANO_DIR=$DIR_SLASH$NANO
  export NGINX_DIR=$DIR_SLASH$NGINX
  export NODE_DIR=$DIR_SLASH$NODE
  export OA_DIR=$DIR_SLASH$OA
  export OPENSHIFT_DIR=$DIR_SLASH$OPENSHIFT
  export OS_DIR=$DIR_SLASH$OS
  export PG_ADMIN_DIR=$DIR_SLASH$PG$SPLIT$ADMIN
  export PG_DIR=$DIR_SLASH$PG
  export PKI_DIR=$DIR_SLASH$PKI
  export PROJ_DIR=$DIR_SLASH$PROJ
  export REACT_DIR=$DIR_SLASH$REACT
  export RUN_DIR=$DIR_SLASH$RUN
  export SNGL_DIR=$DIR_SLASH$SHARE
  export SOAP_DIR=$DIR_SLASH$SOAP
  export SOURCE_DIR=$DIR_SLASH$SOURCE
  export SPECS_DIR=$DIR_SLASH$SPECS
  export SRC_DIR=$DIR_SLASH$SRC
  export SYS_DIR=$DIR_SLASH$SYS
  export SWAG_DIR=$DIR_SLASH$SWAG
  export TMPL_DIR=$DIR_SLASH$TMPL
  export THEMES_DIR=$DIR_SLASH$THEMES
  export TRGT_DIR=$DIR_SLASH$TRGT
  export WF_DIR=$DIR_SLASH$WF
  export WIN_DIR=$DIR_SLASH$WIN
  export WP_DIR=$DIR_SLASH$WP
  export WWW_DIR=$DIR_SLASH$WWW

  export WP_CONTENT_DIR=$WP_DIR$DASH$CONTENT



log_env_exit gENV_DIRS
