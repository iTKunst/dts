@echo off


CALL LOG_LOAD sENV_HOST

REM ANSIBLE

SET "ANS_HOST=0.0.0.0"
SET "ANS_IP=0.0.0.0"
SET "ANS_PORT_EXT=6000"

REM API

SET "API_HOST=0.0.0.0"
SET "API_IP=0.0.0.0"
SET "API_PORT_EXT=6100"

REM FREEIPA

SET "FREE_HOST=0.0.0.0"
SET "FREE_IP=0.0.0.0"
SET "FREE_PORT_EXT=6200"

REM GEOSERVER

SET "GEO_HOST=0.0.0.0"
SET "GEO_IP=0.0.0.0"
SET "GEO_PORT_EXT=6300"

REM GOLANG

SET "GO_HOST=0.0.0.0"
SET "GO_IP=0.0.0.0"
SET "GO_PORT_EXT=6400"

REM GRADLE

SET "GRDL_HOST=0.0.0.0"
SET "GRDL_IP=0.0.0.0"
SET "GRDL_PORT_EXT=6500"

REM GRADLE LIBRARY

SET "GRDL_LIB_HOST=0.0.0.0"
SET "GRDL_LIB_IP=0.0.0.0"
SET "GRDL_LIB_PORT_EXT=6600"

REM JFROG

SET "JFROG_HOST=0.0.0.0"
SET "JFROG_IP=0.0.0.0"
SET "JFROG_PORT_EXT=6700"
SET "JFROG_PORT_EXT_ADMIN=6701"
SET "JFROG_PORT_EXT_DBG=6702"

REM KEYCLOAK

SET "KEY_HOST=0.0.0.0"
SET "KEY_IP=0.0.0.0"
SET "KEY_PORT_EXT=6800"
SET "KEY_PORT_EXT_ADMIN=6801"
SET "KEY_PORT_EXT_DBG='*:6802'

REM MAVEN

SET "MVN_HOST=0.0.0.0"
SET "MVN_IP=0.0.0.0"
SET "MVN_PORT_EXT=6900"
SET "MVN_PORT_EXT_DBG=6901"

REM MAVEN LIBRARY

SET "MVN_LIB_HOST=0.0.0.0"
SET "MVN_LIB_IP=0.0.0.0"
SET "MVN_LIB_PORT_EXT=7000"

REM MYSQL

SET "MS_HOST=0.0.0.0"
SET "MS_IP=0.0.0.0"
SET "MS_PORT_EXT=7100"

REM MYSQL ADMIN

SET "MS_ADMIN_HOST=0.0.0.0"
SET "MS_ADMIN_IP=0.0.0.0"
SET "MS_ADMIN_PORT_EXT=7200"

REM NANO

SET "NANO_HOST=0.0.0.0"
SET "NANO_IP=0.0.0.0"
SET "NANO_PORT_EXT=7300"

REM NEXUS

SET "NEXUS_HOST=0.0.0.0"
SET "NEXUS_IP=0.0.0.0"
SET "NEXUS_PORT_EXT=7400"

REM NEXUS3

SET "NEXUS3_HOST=nexus.dev.ccg-gcc.gc.ca"
SET "NEXUS3_IP=10.209.0.246"
SET "NEXUS3_PORT_EXT=80"

REM NODEJS

SET "NODE_HOST=0.0.0.0"
SET "NODE_IP=0.0.0.0"
SET "NODE_PORT_EXT=7600"

REM OPENAPI CLI

SET "OA_CLI_HOST=0.0.0.0"
SET "OA_CLI_IP=0.0.0.0"
SET "OA_CLI_PORT_EXT=7700"

REM OPENAPI SRVR

SET "OA_SRVR_HOST=0.0.0.0"
SET "OA_SRVR_IP=0.0.0.0"
SET "OA_SRVR_PORT_EXT=7800"

REM PGADMIN

SET "PG_ADMIN_HOST=0.0.0.0"
SET "PG_ADMIN_IP=0.0.0.0"
SET "PG_ADMIN_PORT_EXT=7900"

REM PORTAINER

SET "PORT_HOST=0.0.0.0"
SET "PORT_IP=0.0.0.0"
SET "PORT_PORT_EXT=8000"

REM POSTGIS

SET "GIS_HOST=0.0.0.0"
SET "GIS_IP=0.0.0.0"
SET "GIS_PORT_EXT=8100"

REM POSTGRESQL

SET "PG_HOST=0.0.0.0"
SET "PG_IP=0.0.0.0"
SET "PG_PORT_EXT=8200"

REM REACTJS

SET "REACT_HOST=0.0.0.0"
SET "REACT_IP=0.0.0.0"
SET "REACT_PORT_EXT=8400"

REM SMTP

SET "SMTP_HOST=0.0.0.0"
SET "SMTP_IP=0.0.0.0"
SET "SMTP_PORT_EXT=8450"

REM SOAP

SET "SOAP_HOST=0.0.0.0"
SET "SOAP_IP=0.0.0.0"
SET "SOAP_PORT_EXT=8500"

REM SRVR

SET "SRVR_HOST=0.0.0.0"
SET "SRVR_IP=0.0.0.0"
SET "SRVR_PORT_EXT=8600"

REM SRVR2

SET "SRVR2_HOST=0.0.0.0"
SET "SRVR2_IP=0.0.0.0"
SET "SRVR2_PORT_EXT=8700"

REM SWAGGER CODEGEN CLI

SET "SWAG_CG_CLI_HOST=0.0.0.0"
SET "SWAG_CG_CLI_IP=0.0.0.0"
SET "SWAG_CG_CLI_PORT_EXT=8800"

REM SWAGGER EDITOR

SET "SWAG_EDIT_HOST=0.0.0.0"
SET "SWAG_EDIT_IP=0.0.0.0"
SET "SWAG_EDIT_PORT_EXT=8900"

REM SWAGGER GENERATOR

SET "SWAG_GEN_HOST=0.0.0.0"
SET "SWAG_GEN_IP=0.0.0.0"
SET "SWAG_GEN_PORT_EXT=9000"

REM SWAGGER UI

SET "SWAG_UI_HOST=0.0.0.0"
SET "SWAG_UI_IP=0.0.0.0"
SET "SWAG_UI_PORT_EXT=9100"

REM WILDFLY

SET "WF_HOST=0.0.0.0"
SET "WF_IP=0.0.0.0"
SET "WF_PORT_EXT=9200"
SET "WF_PORT_EXT_APPS=9201"
SET "WF_PORT_EXT_DBG=9202"

REM WORDPRESS

SET "WP_HOST=0.0.0.0"
SET "WP_IP=0.0.0.0"
SET "WP_PORT_EXT=9300"
SET "WP_PORT_EXT_ADMIN=9301"
SET "WP_PORT_EXT_APPS=9302"


CALL LOG_UNLOAD sENV_HOST