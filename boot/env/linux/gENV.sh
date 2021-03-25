#!/bin/bash
# shellcheck disable=SC2086
# shellcheck disable=SC2153

log_env_enter gENV

# Automatically generated or default values

  source gENV_CATS.sh
  source gENV_NAMES.sh
  source gENV_TKNS.sh

  source gENV_DIRS.sh
  source gENV_FILES.sh
  source gENV_TAGS.sh
  source gENV_WEB.sh

  source settings.sh
  source gENV_SYS.sh
  source gENV_PROJ.sh



  # ANSIBLE

  export ANS_CONT=$SYS_CONT$ANS_TAG
  export ANS_CONT_DIR=
  export ANS_HOST_DIR=
  export ANS_IMG=$SYS_IMG$ANS_TAG
  export ANS_PORT_INT=
  export ANS_VOL=

  export ANS_CONT_MNT_DIR=$ANS_CONT_DIR
  export ANS_HOST_DATA_DIR=$ANS_HOST_DIR

  # API

  export API_CONT=$SYS_CONT$API_TAG
  export API_CONT_DIR=$OPT_DIR$APP_DIR
  export API_HOST_DIR=$CODE_DIR
  export API_IMG=$SYS_IMG$API_TAG
  export API_PORT_INT=8080
  export API_VOL=

  export API_CONT_MNT_DIR=$API_CONT_DIR$TRGT_DIR
  export API_HOST_MNT_DIR=$API_HOST_DIR$TRGT_DIR

  # FREEIPA

  export FREE_CONT=$SYS_CONT$FREE_TAG
  export FREE_CONT_DIR=$DATA_DIR
  export FREE_HOST_DIR=$IPA
  export FREE_IMG=$SYS_IMG$FREE_TAG
  export FREE_PORT_INT=443
  export FREE_VOL=

  export FREE_CONT_MNT_DIR=$FREE_CONT_DIR
  export FREE_HOST_MNT_DIR=$FREE_HOST_DIR

  # GEOSERVER

  export GEO_CONT=$SYS_CONT$GEO_TAG
  export GEO_CONT_DIR=$OPT_DIR$GEO_DIR
  export GEO_HOST_DIR=$DATA_DIR
  export GEO_IMG=$SYS_IMG$GEO_TAG
  export GEO_PORT_INT=8080
  export GEO_VOL=

  export GEO_CONT_MNT_DIR=$GEO_CONT_DIR$DATA_DIR
  export GEO_HOST_MNT_DIR=$GEO_HOST_DIR$DATA_DIR

  # GOLANG

  export GO_CONT=$SYS_CONT$GO_TAG
  export GO_CONT_DIR=$GO_DIR$SRC_DIR$APP_DIR
  export GO_HOST_DIR=
  export GO_IMG=$SYS_IMG$GO_TAG
  export GO_PORT_INT=8080
  export GO_VOL=

  export GO_CONT_MNT_DIR=$GO_CONT_DIR$TRGT_DIR
  export GO_HOST_MNT_DIR=$GO_HOST_DIR$DATA_DIR

  # GRADLE

  export GRDL_CONT=$SYS_CONT$GRDL_TAG
  export GRDL_CONT_DIR=$HME_DIR$GRDL_DIR$SRC_DIR
  export GRDL_HOST_DIR=$CODE_DIR
  export GRDL_IMG=$SYS_IMG$GRDL_TAG
  export GRDL_PORT_INT=8080
  export GRDL_VOL=

  export GRDL_CONT_MNT_DIR=$GRDL_CONT_DIR$TRGT_DIR
  export GRDL_HOST_MNT_DIR=$GRDL_HOST_DIR

  # GRADLE LIBRARY

  export GRDL_LIB_CONT=$GRDL_CONT$LIB_TAG
  export GRDL_LIB_CONT_DIR=$HME_DIR$GRDL_DIR$SRC_DIR
  export GRDL_LIB_HOST_DIR=$CODE_DIR
  export GRDL_LIB_IMG=$GRDL_IMG$LIB_TAG
  export GRDL_LIB_PORT_INT=
  export GRDL_LIB_VOL=

  export GRDL_LIB_CONT_MNT_DIR=$GRDL_LIB_CONT_DIR$TRGT_DIR
  export GRDL_LIB_HOST_MNT_DIR=$GRDL_LIB_CONT_DIR

  # JFROG APPLICATION

  export JFROG_CONT=$SYS_CONT$JFROG_TAG
  export JFROG_CONT_DIR=$OPT_DIR$SYS_DIR
  export JFROG_HOST_DIR=$SRC_DIR
  export JFROG_IMG=$SYS_IMG$JFROG_TAG
  export JFROG_PORT_INT=8081
  export JFROG_VOL=

  export JFROG_CONT_MNT_DIR=$JFROG_CONT_DIR$SRC_DIR
  export JFROG_HOST_MNT_DIR=$JAVA_CONT_DIR$TRGT_DIR

  export JFROG_CONT_DATA_DIR=$JFROG_CONT_DIR$TRGT_DIR
  export JFROG_PORT_INT_ADMIN=80
  export JFROG_PORT_INT_DBG=443

  # KEYCLOAK

  export KEY_CONT=$SYS_CONT$KEY_TAG
  export KEY_CONT_DIR=$TMP_DIR
  export KEY_HOST_DIR=$SYS_DIR$KEYCLOAK_DIR
  export KEY_IMG=$SYS_IMG$KEY_TAG
  export KEY_PORT_INT=8080
  export KEY_VOL=

  export KEY_CONT_MNT_DIR=$KEY_CONT_DIR$TRGT_DIR
  export KEY_HOST_MNT_DIR=$KEY_HOST_DIR$TRGT_DIR

  export KEY_PORT_INT_ADMIN=9990

  # MAVEN

  export MVN_CONT=$SYS_CONT$MVN_TAG
  export MVN_CONT_DIR=$VAR_DIR$MVN_DIR
  export MVN_HOST_DIR=$CODE_DIR
  export MVN_IMG=$SYS_IMG$MVN_TAG
  export MVN_PORT_INT=8080
  export MVN_VOL=

  export MVN_CONT_MNT_DIR=$MVN_CONT_DIR$TRGT_DIR
  export MVN_HOST_MNT_DIR=$MVN_HOST_DIR$TRGT_DIR

  export MVN_CONT_CFG_DIR=$MVN_CONT_DIR$M2_DIR
  export MVN_HOST_CFG_DIR=$SYS_DIR$MVN_DIR
  export MVN_PORT_INT_DBG=5005
  export MVN_USER=root

  # MAVEN LIBRARY

  export MVN_LIB_CONT=$MVN_CONT$LIB_TAG
  export MVN_LIB_CONT_DIR=$VAR_DIR$MVN_DIR
  export MVN_LIB_HOST_DIR=$CODE_DIR
  export MVN_LIB_IMG=$MVN_IMG$LIB_TAG
  export MVN_LIB_PORT_INT=8080
  export MVN_LIB_VOL=

  export MVN_LIB_CONT_MNT_DIR=$MVN_LIB_CONT_DIR
  export MVN_LIB_HOST_MNT_DIR=$MVN_LIB_HOST_DIR

  # MYSQL

  export MS_CONT=$SYS_CONT$MS_TAG
  export MS_CONT_DIR=$OPT_DIR$MS_DIR
  export MS_HOST_DIR=$DOT$SYS_DIR$DATA_DIR$MS_DIR
  export MS_IMG=$SYS_IMG$MS_TAG
  export MS_PORT_INT=3306
  export MS_VOL=

  export MS_CONT_MNT_DIR=
  export MS_HOST_MNT_DIR=

  export MS_CONT_DATA_DIR=$VAR_DIR$LIB_DIR$MYSQL_DIR

  # NANO SERVER

  export NANO_CONT=$SYS_CONT$NANO_TAG
  export NANO_CONT_DIR=$USR_DIR$SRC_DIR$APP_DIR
  export NANO_HOST_DIR=$DATA_DIR
  export NANO_IMG=$SYS_IMG$NANO_TAG
  export NANO_PORT_INT=8080
  export NANO_VOL=

  export NANO_CONT_MNT_DIR=$NANO_CONT_DIR
  export NANO_HOST_MNT_DIR=$NANO_CONT_DIR

  # NETWORK

  export NET_CONT=$SYS_CONT$NET_TAG
  export NET_CONT_DIR=
  export NET_HOST_DIR=
  export NET_IMG=$SYS_IMG$NET_TAG
  export NET_PORT_INT=
  export NET_VOL=

  export NET_CONT_MNT_DIR=
  export NET_HOST_MNT_DIR=

  # NEXUS

  export NEXUS_CONT=$SYS_CONT$NEXUS_TAG
  export NEXUS_CONT_DIR=$NEXUS_DATA_DIR
  export NEXUS_HOST_DIR=$SRC_DIR
  export NEXUS_IMG=$SYS_IMG$NEXUS_TAG
  export NEXUS_PORT_INT=8081
  export NEXUS_VOL=

  export NEXUS_CONT_MNT_DIR=$NEXUS_CONT_DIR
  export NEXUS_HOST_MNT_DIR=$NEXUS_HOST_DIR

  export NEXUS_CONT_PATH=/nexus
  export NEXUS_JAVA_OPTS="-server -XX:MaxPermSize=192m -Djava.net.preferIPv4Stack=true"
  export NEXUS_LAUNCH_CONF="./conf/jetty.xml ./conf/jetty-requestlog.xml"
  export NEXUS_MAX_HEAP=768m
  export NEXUS_MIN_HEAP=256m

  # NEXUS3

  export NEXUS3_CONT=$SYS_CONT$NEXUS3_TAG
  export NEXUS3_CONT_DIR=$NEXUS_DATA_DIR
  export NEXUS3_HOST_DIR=$SRC_DIR
  export NEXUS3_IMG=$SYS_IMG$NEXUS3_TAG
  export NEXUS3_PORT_INT=8081
  export NEXUS3_VOL=

  export NEXUS3_CONT_MNT_DIR=$NEXUS3_CONT_DIR
  export NEXUS3_HOST_MNT_DIR=$NEXUS3_HOST_DIR

  export NEXUS3_CONT_PATH=/nexus
  export NEXUS3_JAVA_OPTS="-server -XX:MaxPermSize=192m -Djava.net.preferIPv4Stack=true"
  export NEXUS3_LAUNCH_CONF="./conf/jetty.xml ./conf/jetty-requestlog.xml"
  export NEXUS3_MAX_HEAP=768m
  export NEXUS3_MIN_HEAP=256m

  # NG CLI

  export NG_CLI_CONT=$SYS_CONT$NG_TAG$CLI_TAG
  export NG_CLI_CONT_DIR=$USR_DIR$SRC_DIR$APP_DIR
  export NG_CLI_HOST_DIR=$DATA_DIR
  export NG_CLI_IMG=$SYS_IMG$$NG_TAG$CLI_TAG
  export NG_CLI_PORT_INT=4200
  export NG_CLI_VOL=

  export NG_CLI_CONT_MNT_DIR=$NG_CLI_CONT_DIR
  export NG_CLI_HOST_MNT_DIR=$NG_CLI_HOST_DIR

  # NODE

  export NODE_CONT=$SYS_CONT$NODE_TAG
  export NODE_CONT_DIR=$USR_DIR$SRC_DIR$APP_DIR
  export NODE_HOST_DIR=$DATA_DIR
  export NODE_IMG=$SYS_IMG$NODE_TAG
  export NODE_PORT_INT=3000
  export NODE_VOL=

  export NODE_CONT_MNT_DIR=$NODE_CONT_DIR$DATA_DIR
  export NODE_HOST_MNT_DIR=$NODE_HOST_DIR$DATA_DIR

  # OPENAPI

  export OA_CONT=$SYS_CONT$OA_TAG
  export OA_CONT_DIR=
  export OA_HOST_DIR=
  export OA_IMG=$SYS_IMG$OA_TAG
  export OA_PORT_INT=
  export OA_VOL=

  export OA_CONT_MNT_DIR=$OA_CONT_DIR
  export OA_HOST_MNT_DIR=$OA_HOST_DIR

  # OPENAPI CLI

  export OA_CLI_CONT=$OA_CONT$CLI_TAG
  export OA_CLI_CONT_DIR=$OPT_DIR$OA_DIR
  export OA_CLI_HOST_DIR=$API_DIR
  export OA_CLI_IMG=$OA_IMG$CLI_TAG
  export OA_CLI_PORT_INT=8080
  export OA_CLI_VOL=

  export OA_CLI_CONT_MNT_DIR=$OA_CLI_CONT_DIR
  export OA_CLI_HOST_MNT_DIR=$OA_CLI_HOST_DIR

  # OPENAPI ONLINE

  export OA_SRVR_CONT=$OA_CONT$SRVR_TAG
  export OA_SRVR_CONT_DIR=$OPT_DIR$SRVR_DIR
  export OA_SRVR_HOST_DIR=$API_DIR
  export OA_SRVR_IMG=$OA_IMG$SRVR_TAG
  export OA_SRVR_PORT_INT=8080
  export OA_SRVR_VOL=

  export OA_SRVR_CONT_MNT_DIR=$OA_SRVR_CONT_DIR
  export OA_SRVR_HOST_MNT_DIR=$OA_SRVR_HOST_DIR

  # PGADMIN

  export PG_ADMIN_CONT=$SYS_CONT$PG_ADMIN_TAG
  export PG_ADMIN_CONT_DIR=$OPT_DIR$PG_ADMIN_DIR
  export PG_ADMIN_HOST_DIR=$SYS_IMG$PG_ADMIN_TAG
  export PG_ADMIN_IMG=$SYS_IMG$PG_ADMIN_TAG
  export PG_ADMIN_PORT_INT=80
  export PG_ADMIN_VOL=

  export PG_ADMIN_CONT_MNT_DIR=$PG_ADMIN_CONT_DIR
  export PG_ADMIN_HOST_MNT_DIR=$PG_ADMIN_HOST_DIR

  # PHPMYADMIN

  export MS_ADMIN_CONT=$MS_CONT$ADMIN_TAG
  export MS_ADMIN_CONT_DIR=
  export MS_ADMIN_HOST_DIR=
  export MS_ADMIN_IMG=$MS_IMG$ADMIN_TAG
  export MS_ADMIN_PORT_INT=80
  export MS_ADMIN_VOL=

  export MS_ADMIN_CONT_MNT_DIR=
  export MS_ADMIN_HOST_MNT_DIR=

  # PORTAINER

  export PORT_CONT=$SYS_CONT$PORT_TAG
  export PORT_CONT_DIR=$VAR_DIR$RUN_DIR$DCKR_DIR$DOT$SOCK
  export PORT_HOST_DIR=
  export PORT_IMG=$SYS_IMG$PORT_TAG
  export PORT_PORT_INT=9000
  export PORT_VOL=

  export PORT_CONT_MNT_DIR=$DATA
  export PORT_HOST_MNT_DIR=$PORT_HOST_DIR

  # POSTGIS

  export GIS_CONT=$SYS_CONT$GIS_TAG
  export GIS_CONT_DIR=$OPT_DIR$GIS_DIR
  export GIS_HOST_DIR=$DOT$SYS_DIR$DATA_DIR$GIS_DIR
  export GIS_IMG=$SYS_IMG$GIS_TAG
  export GIS_PORT_INT=80
  export GIS_VOL=

  export GIS_CONT_MNT_DIR=$GIS_CONT_DIR$TRGT_DIR
  export GIS_HOST_MNT_DIR=$GIS_HOST_DIR$TRGT_DIR

  # POSTGRESQL

  export PG_CONT=$SYS_CONT$PG_TAG
  export PG_CONT_DIR=$OPT_DIR$PG_DIR
  export PG_HOST_DIR=$SYS_DIR$DATA_DIR$PG_DIR
  export PG_IMG=$SYS_IMG$PG_TAG
  export PG_PORT_INT=5432
  export PG_VOL=

  export PG_CONT_MNT_DIR=$PG_CONT_DIR$DATA_DIR
  export PG_HOST_MNT_DIR=

  export PG_VENDOR=$PG

  # REACTJS

  export REACT_CONT=$SYS_CONT$REACT_TAG
  export REACT_CONT_DIR=$HME_DIR$NODE_DIR$APP_DIR
  export REACT_HOST_DIR=$CODE_DIR
  export REACT_IMG=$SYS_IMG$REACT_TAG
  export REACT_PORT_INT=80
  export REACT_VOL=

  export REACT_CONT_MNT_DIR=$REACT_CONT_DIR$TRGT_DIR
  export REACT_HOST_MNT_DIR=$REACT_HOST_DIR$TRGT_DIR

  # RHCOS

  export RHCOS_CONT=$SYS_CONT$RHCOS_TAG
  export RHCOS_CONT_DIR=$HME_DIR$NODE_DIR$APP_DIR
  export RHCOS_HOST_DIR=$CODE_DIR
  export RHCOS_IMG=$SYS_IMG$RHCOS_TAG
  export RHCOS_PORT_INT=80
  export RHCOS_VOL=

  export RHCOS_CONT_MNT_DIR=$RHCOS_CONT_DIR$TRGT_DIR
  export RHCOS_HOST_MNT_DIR=$RHCOS_CONT_DIR$TRGT_DIR

  # SMTP

  export SMTP_CONT=$SYS_CONT$SMTP_TAG
  export SMTP_CONT_DIR=$OPT_DIR$APP_DIR
  export SMTP_HOST_DIR=
  export SMTP_IMG=$SYS_IMG$SMTP_TAG
  export SMTP_PORT_INT=25
  export SMTP_VOL=

  export SMTP_CONT_MNT_DIR=$SMTP_CONT_DIR$TRGT_DIR
  export SMTP_HOST_MNT_DIR=$SMTP_HOST_DIR$TRGT_DIR

  # SOAP

  export SOAP_CONT=$SYS_CONT$SOAP_TAG
  export SOAP_CONT_DIR=$OPT_DIR$APP_DIR
  export SOAP_HOST_DIR=
  export SOAP_IMG=$SYS_IMG$SOAP_TAG
  export SOAP_PORT_INT=80
  export SOAP_VOL=

  export SOAP_CONT_MNT_DIR=$SOAP_CONT_DIR$TRGT_DIR
  export SOAP_HOST_MNT_DIR=$SOAP_HOST_DIR$TRGT_DIR

  export SOAP_CONT_CERT_DIR=$CERT_DIR

  # SRVR

  export SRVR_CONT=$SYS_CONT$SRVR_TAG
  export SRVR_CONT_DIR=$OPT_DIR$APP_DIR
  export SRVR_HOST_DIR=
  export SRVR_IMG=$SYS_IMG$SRVR_TAG
  export SRVR_PORT_INT=80
  export SRVR_VOL=

  export SRVR_CONT_MNT_DIR=$SRVR_CONT_DIR$CODE_DIR
  export SRVR_HOST_MNT_DIR=$SRVR_HOST_DIR$CODE_DIR

  export SRVR_CONT_CERT_DIR=$CERT_DIR

  # SRVR2

  export SRVR2_CONT=$SYS_CONT$SRVR2_TAG
  export SRVR2_CONT_DIR=$OPT_DIR$APP_DIR
  export SRVR2_HOST_DIR=$CODE_DIR
  export SRVR2_IMG=$SYS_IMG$SRVR2_TAG
  export SRVR2_PORT_INT=8080
  export SRVR2_VOL=

  export SRVR2_CONT_MNT_DIR=$SRVR2_CONT_DIR
  export SRVR2_HOST_MNT_DIR=$SRVR2_HOST_DIR

  export SRVR2_CONT_CERT_DIR=$CONT_CERT_DIR

  # SWAGGER

  export SWAG_CONT=$SYS_CONT$SWAG_TAG
  export SWAG_CONT_DIR=$OPT_DIR$APP_DIR
  export SWAG_HOST_DIR=
  export SWAG_IMG=$SYS_IMG$SWAG_TAG
  export SWAG_PORT_INT=80
  export SWAG_VOL=

  export SWAG_CONT_MNT_DIR=$SWAG_CONT_DIR$CODE_DIR
  export SWAG_HOST_MNT_DIR=$SWAG_HOST_DIR$CODE_DIR

  # SWAGGER CODEGEN CLI

  export SWAG_CG_CLI_CONT=$SWAG_CONT$CG_TAG$CLI_TAG
  export SWAG_CG_CLI_CONT_DIR=$OPT_DIR$APP_DIR
  export SWAG_CG_CLI_HOST_DIR=
  export SWAG_CG_CLI_IMG=$SWAG_IMG$CG_TAG$CLI_TAG
  export SWAG_CG_CLI_PORT_INT=80
  export SWAG_CG_CLI_VOL=

  export SWAG_CG_CLI_CONT_MNT_DIR=$SWAG_CG_CLI_CONT_DIR$TRGT_DIR
  export SWAG_CG_CLI_HOST_MNT_DIR=$SWAG_CG_CLI_HOST_DIR$TRGT_DIR

  # SWAGGER EDITOR

  export SWAG_EDIT_CONT=$SWAG_CONT$EDIT_TAG
  export SWAG_EDIT_CONT_DIR=$VAR_DIR$SPECS_DIR
  export SWAG_EDIT_HOST_DIR=$API_DIR
  export SWAG_EDIT_IMG=$SWAG_IMG$EDIT_TAG
  export SWAG_EDIT_PORT_INT=8080
  export SWAG_EDIT_VOL=

  export SWAG_EDIT_CONT_MNT_DIR=$SWAG_EDIT_CONT_DIR$TRGT_DIR
  export SWAG_EDIT_HOST_MNT_DIR=$SWAG_EDIT_HOST_DIR$TRGT_DIR

  export SWAG_EDIT_JSON=$SWAG_EDIT_CONT_DIR$SLASH$API_JSON

  # SWAGGER GENERATOR

  export SWAG_GEN_CONT=$SWAG_CONT$GEN_TAG
  export SWAG_GEN_CONT_DIR=$VAR_DIR$SPECS_DIR
  export SWAG_GEN_HOST_DIR=$API_DIR
  export SWAG_GEN_IMG=$SWAG_IMG$GEN_TAG
  export SWAG_GEN_PORT_INT=8080
  export SWAG_GEN_VOL=

  export SWAG_GEN_CONT_MNT_DIR=$SWAG_GEN_CONT_DIR$TRGT_DIR
  export SWAG_GEN_HOST_MNT_DIR=$SWAG_GEN_HOST_DIR$TRGT_DIR

  export SWAG_GEN_JSON=$SWAG_GEN_CONT_DIR$SLASH$API_JSON

  # SWAGGER UI

  export SWAG_UI_CONT=$SWAG_CONT$UI_TAG
  export SWAG_UI_CONT_DIR=$VAR_DIR$SPECS_DIR
  export SWAG_UI_HOST_DIR=$API_DIR
  export SWAG_UI_IMG=$SWAG_IMG$UI_TAG
  export SWAG_UI_PORT_INT=8080
  export SWAG_UI_VOL=

  export SWAG_UI_CONT_MNT_DIR=$SWAG_UI_CONT_DIR$TRGT_DIR
  export SWAG_UI_HOST_MNT_DIR=$SWAG_UI_HOST_DIR$TRGT_DIR

  export SWAG_UI_JSON=$SWAG_UI_CONT_DIR$SLASH$API_JSON

  # TERRAFORM

  export TERR_CONT=$SWAG_CONT$UI_TAG
  export TERR_CONT_DIR=$VAR_DIR$SPECS_DIR
  export TERR_HOST_DIR=$API_DIR
  export TERR_IMG=$SWAG_IMG$UI_TAG
  export TERR_PORT_INT=8080
  export TERR_VOL=

  export TERR_CONT_MNT_DIR=$TERR_CONT_DIR$TRGT_DIR
  export TERR_HOST_MNT_DIR=$TERR_HOST_DIR$TRGT_DIR

  export TERR_JSON=$TERR_CONT_DIR$SLASH$API_JSON

  # TYPESCRIPT

  export TS_CONT=$SWAG_CONT$TS_TAG
  export TS_CONT_DIR=$VAR_DIR$SPECS_DIR
  export TS_HOST_DIR=$API_DIR
  export TS_IMG=$SWAG_IMG$TS_TAG
  export TS_PORT_INT=8080
  export TS__VOL=

  export TS_CONT_MNT_DIR=$TS_CONT_DIR$TRGT_DIR
  export TS_HOST_MNT_DIR=$TS_HOST_DIR$TRGT_DIR

  export TS_JSON=$TS_CONT_DIR$SLASH$API_JSON

  # VOLUME

  export VOL_CONT=$SYS_CONT$VOL_TAG
  export VOL_CONT_DIR=
  export VOL_HOST_DIR=
  export VOL_IMG=$SYS_IMG$VOL_TAG
  export VOL_PORT_INT=
  export VOL_VOL=

  export VOL_CONT_MNT_DIR=
  export VOL_HOST_MNT_DIR=

  # WILDFLY

  export WF_CONT=$SYS_CONT$WF_TAG
  export WF_CONT_DIR=$OPT_DIR$JBOSS_DIR$WF_DIR
  export WF_HOST_DIR=$CONF_DIR
  export WF_IMG=$SYS_IMG$WF_TAG
  export WF_PORT_INT=9990
  export WF_VOL=

  export WF_CONT_MNT_DIR=$WF_CONT_DIR$TRGT_DIR
  export WF_HOST_MNT_DIR=$WF_HOST_DIR$TRGT_DIR

  export WF_PORT_INT_APPS=8080
  export WF_PORT_INT_DBG=8787

  # WORDPRESS

  export WP_CONT=$SYS_CONT$WP_TAG
  export WP_CONT_DIR=$VAR_DIR$WWW_DIR$HTML_DIR
  export WP_HOST_DIR=$WP_CONTENT_DIR
  export WP_IMG=$SYS_IMG$WP_TAG
  export WP_PORT_INT_ADMIN=8080
  export WP_VOL=

  export WP_CONT_MNT_DIR=$WP_CONT_DIR$TRGT_DIR
  export WP_HOST_MNT_DIR=$WP_HOST_DIR

  export WP_DB_HOST=$MS_CONT$COLON$MS_PORT_INT
  export WP_PORT_INT_APPS=80
  export WP_PORT_INT_DBG=90
  export WP_TABLE_PREFIX=SYS_NAME$SPLIT


log_env_exit gENV
