#!/bin/bash
# shellcheck disable=SC2086


log_enter sENV_HOST

  # ANSIBLE

  export ANS_HOST=0.0.0.0
  export ANS_IP=0.0.0.0
  export ANS_PORT_EXT=6000

  # API

  export API_HOST=0.0.0.0
  export API_IP=0.0.0.0
  export API_PORT_EXT=6100

  # FREEIPA

  export FREE_HOST=0.0.0.0
  export FREE_IP=0.0.0.0
  export FREE_PORT_EXT=6200

  # GEOSERVER

  export GEO_HOST=0.0.0.0
  export GEO_IP=0.0.0.0
  export GEO_PORT_EXT=6300

  # GOLANG

  export GO_HOST=0.0.0.0
  export GO_IP=0.0.0.0
  export GO_PORT_EXT=6400

  # GRADLE

  export GRDL_HOST=0.0.0.0
  export GRDL_IP=0.0.0.0
  export GRDL_PORT_EXT=6500

  # GRADLE LIBRARY

  export GRDL_LIB_HOST=0.0.0.0
  export GRDL_LIB_IP=0.0.0.0
  export GRDL_LIB_PORT_EXT=6600

  # JFROG

  export JFROG_HOST=0.0.0.0
  export JFROG_IP=0.0.0.0
  export JFROG_PORT_EXT=6700
  export JFROG_PORT_EXT_ADMIN=6701
  export JFROG_PORT_EXT_DBG=6702

  # KEYCLOAK

  export KEY_HOST=0.0.0.0
  export KEY_IP=0.0.0.0
  export KEY_PORT_EXT=6800
  export KEY_PORT_EXT_ADMIN=6801
  export KEY_PORT_EXT_DBG='*:6802'

  # MAVEN

  export MVN_HOST=0.0.0.0
  export MVN_IP=0.0.0.0
  export MVN_PORT_EXT=6900
  export MVN_PORT_EXT_DBG=6901

  # MAVEN LIBRARY

  export MVN_LIB_HOST=0.0.0.0
  export MVN_LIB_IP=0.0.0.0
  export MVN_LIB_PORT_EXT=7000

  # MYSQL

  export MS_HOST=0.0.0.0
  export MS_IP=0.0.0.0
  export MS_PORT_EXT=7100

  # MYSQL ADMIN

  export MS_ADMIN_HOST=0.0.0.0
  export MS_ADMIN_IP=0.0.0.0
  export MS_ADMIN_PORT_EXT=7200

  # NANO

  export NANO_HOST=0.0.0.0
  export NANO_IP=0.0.0.0
  export NANO_PORT_EXT=7300

  # NEXUS

  export NEXUS_HOST=0.0.0.0
  export NEXUS_IP=0.0.0.0
  export NEXUS_PORT_EXT=7400

  # NEXUS3

  export NEXUS3_HOST=nexus.dev.ccg-gcc.gc.ca
  export NEXUS3_IP=10.209.0.246
  export NEXUS3_PORT_EXT=80

  # NODEJS

  export NODE_HOST=0.0.0.0
  export NODE_IP=0.0.0.0
  export NODE_PORT_EXT=7600

  # OPENAPI CLI

  export OA_CLI_HOST=0.0.0.0
  export OA_CLI_IP=0.0.0.0
  export OA_CLI_PORT_EXT=7700

  # OPENAPI SRVR

  export OA_SRVR_HOST=0.0.0.0
  export OA_SRVR_IP=0.0.0.0
  export OA_SRVR_PORT_EXT=7800

  # PGADMIN

  export PG_ADMIN_HOST=0.0.0.0
  export PG_ADMIN_IP=0.0.0.0
  export PG_ADMIN_PORT_EXT=7900

  # PORTAINER

  export PORT_HOST=0.0.0.0
  export PORT_IP=0.0.0.0
  export PORT_PORT_EXT=8000

  # POSTGIS

  export GIS_HOST=0.0.0.0
  export GIS_IP=0.0.0.0
  export GIS_PORT_EXT=8100

  # POSTGRESQL

  export PG_HOST=0.0.0.0
  export PG_IP=0.0.0.0
  export PG_PORT_EXT=8200

  # REACTJS

  export REACT_HOST=0.0.0.0
  export REACT_IP=0.0.0.0
  export REACT_PORT_EXT=8400

  # SMTP

  export SMTP_HOST=0.0.0.0
  export SMTP_IP=0.0.0.0
  export SMTP_PORT_EXT=8450

  # SOAP_CLNT

  export SOAP_CLNT_HOST=0.0.0.0
  export SOAP_CLNT_IP=0.0.0.0
  export SOAP_CLNT_PORT_EXT=8500

  # SOAP_SRVR

  export SOAP_SRVR_HOST=0.0.0.0
  export SOAP_SRVR_IP=0.0.0.0
  export SOAP_SRVR_PORT_EXT=8550

  # SRVR

  export SRVR_HOST=0.0.0.0
  export SRVR_IP=0.0.0.0
  export SRVR_PORT_EXT=8600

  # SRVR2

  export SRVR2_HOST=0.0.0.0
  export SRVR2_IP=0.0.0.0
  export SRVR2_PORT_EXT=8700

  # SWAGGER CODEGEN CLI

  export SWAG_CG_CLI_HOST=0.0.0.0
  export SWAG_CG_CLI_IP=0.0.0.0
  export SWAG_CG_CLI_PORT_EXT=8800

  # SWAGGER EDITOR

  export SWAG_EDIT_HOST=0.0.0.0
  export SWAG_EDIT_IP=0.0.0.0
  export SWAG_EDIT_PORT_EXT=8900

  # SWAGGER GENERATOR

  export SWAG_GEN_HOST=0.0.0.0
  export SWAG_GEN_IP=0.0.0.0
  export SWAG_GEN_PORT_EXT=9000

  # SWAGGER UI

  export SWAG_UI_HOST=0.0.0.0
  export SWAG_UI_IP=0.0.0.0
  export SWAG_UI_PORT_EXT=9100

  # WILDFLY

  export WF_HOST=0.0.0.0
  export WF_IP=0.0.0.0
  export WF_PORT_EXT=9200
  export WF_PORT_EXT_APPS=9201
  export WF_PORT_EXT_DBG=9202

  # WORDPRESS

  export WP_HOST=0.0.0.0
  export WP_IP=0.0.0.0
  export WP_PORT_EXT=9300
  export WP_PORT_EXT_ADMIN=9301
  export WP_PORT_EXT_APPS=9302


log_exit sENV_HOST