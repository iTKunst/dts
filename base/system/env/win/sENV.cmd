@echo off



call LOG_LOAD sENV

CALL gENV
CALL sENV_DCKR
CALL sENV_HOST

REM ANSIBLE

SET "ANS_DB_NAME="
SET "ANS_PASSWORD="
SET "ANS_USER="

REM API

SET "API_DB_NAME="
SET "API_PASSWORD="
SET "API_USER="

REM FREEIPA

SET "FREE_DB_NAME="
SET "FREE_PASSWORD=FREE"
SET "FREE_USER=pjldooley@gmail.com"

SET "FREE_CONT_GRP_DIR=/sys/fs/cgroup"
SET "FREE_HOST_GRP_DIR=/sys/fs/cgroup"
SET "FREE_SYSCTL=net.ipv6.conf.all.disable_ipv6=0"

REM GEOSERVER

SET "GEO_DB_NAME="
SET "GEO_PASSWORD=GEO"
SET "GEO_USER=pjldooley@gmail.com"

REM GOLANG

SET "GO_DB_NAME="
SET "GO_PASSWORD=GO"
SET "GO_USER=pjldooley@gmail.com"

REM GRADLE

SET "GRDL_DB_NAME="
SET "GRDL_PASSWORD=GRDL"
SET "GRDL_USER=pjldooley@gmail.com"

REM GRADLE LIBRARY

SET "GRDL_LIB_DB_NAME="
SET "GRDL_LIB_PASSWORD="
SET "GRDL_LIB_USER="

REM JFROG

SET "JFROG_DB_NAME="
SET "JFROG_PASSWORD="
SET "JFROG_USER="

SET "JFROG_PORT_EXT_ADMIN=7501"
SET "JFROG_PORT_EXT_DBG=7502"
SET "JFROG_REG_DEV=docker-dev-local2.art.local"
SET "JFROG_REG_PROD=docker-prod-local2.art.local"
SET "JFROG_REG_REM=docker-remote.art.local"
SET "JFROG_REG_VIRT=docker-virtual.art.local"

REM KEYCLOAK

SET "KEY_DB_NAME="
SET "KEY_PASSWORD=admin"
SET "KEY_USER=admin"

SET "KEY_DBG=true"
SET "KEY_IMPORT=%KEY_CONT_DIR%%FOR_SLASH%realm-export.json"
SET "KEY_LOG_LEVEL=INFO"
SET "KEY_PROXY_FORWARD=true"
SET "KEY_ROOT_LOG_LEVEL=INFO"

REM MAVEN

SET "MVN_DB_NAME="
SET "MVN_PASSWORD="
SET "MVN_USER="

REM MAVEN LIBRARY

SET "MVN_LIB_DB_NAME="
SET "MVN_LIB_PASSWORD="
SET "MVN_LIB_USER="

REM MYSQL

SET "MS_DB_NAME=sigv2"
SET "MS_PASSWORD=admin"
SET "MS_USER=root"

REM MYSQL ADMIN

SET "MS_ADMIN_DB_NAME="
SET "MS_ADMIN_PASSWORD=admin"
SET "MS_ADMIN_USER=pjldooley@gmail.com"

REM NANO

SET "NANO_DB_NAME="
SET "NANO_PASSWORD="
SET "NANO_USER=root"

REM NEXUS

SET "NEXUS_DB_NAME="
SET "NEXUS_PASSWORD=admin"
SET "NEXUS_USER=admin"

REM NEXUS3

SET "NEXUS3_DB_NAME="
SET "NEXUS3_PASSWORD=admin"
SET "NEXUS3_USER=admin"

REM NODEJS

SET "NODE_DB_NAME="
SET "NODE_PASSWORD="
SET "NODE_USER=root"

SET "NODE_JSON="
SET "NODE_LOG_LEVEL=info"

REM OPENAPI CLI

SET "OA_CLI_DB_NAME="
SET "OA_CLI_PASSWORD="
SET "OA_CLI_USER=root"

SET "OA_CLI_API_NAME="

REM OPENAPI SRVR

SET "OA_SRVR_DB_NAME="
SET "OA_SRVR_PASSWORD="
SET "OA_SRVR_USER=root"

REM PGADMIN

SET "PG_ADMIN_DB_NAME="
SET "PG_ADMIN_PASSWORD=admin"
SET "PG_ADMIN_USER=pjldooley@gmail.com"

REM PORTAINER

SET "PORT_DB_NAME="
SET "PORT_PASSWORD=admin123"
SET "PORT_USER=admin"

REM POSTGIS

SET "GIS_DB_NAME="
SET "GIS_PASSWORD=GIS"
SET "GIS_USER=pjldooley@gmail.com"

REM POSTGRESQL

SET "PG_DB_NAME=keycloak"
SET "PG_PASSWORD=keycloak"
SET "PG_USER=keycloak"

REM REACTJS

SET "REACT_DB_NAME="
SET "REACT_PASSWORD="
SET "REACT_USER="

REM SMTP

SET "SMTP_DB_NAME="
SET "SMTP_PASSWORD="
SET "SMTP_USER="

REM SOAP

SET "SOAP_DB_NAME="
SET "SOAP_PASSWORD="
SET "SOAP_USER="

SET "SOAP_ART=cvms-scgv-ihs"
SET "SOAP_FILE=APSShipService.wsdl"
SET "SOAP_GRP=ca.gc.ccg-gcc"
SET "SOAP_PKG=ca.gc.ccggcc.cvmsscgv.ihs"
SET "SOAP_VER=1.0.1"

REM SRVR

SET "SRVR_DB_NAME=
SET "SRVR_PASSWORD=
SET "SRVR_USER=

REM SRVR2

SET "SRVR2_DB_NAME=
SET "SRVR2_PASSWORD=
SET "SRVR2_USER=

REM SWAGGER CODEGEN CLI

SET "SWAG_CG_CLI_DB_NAME="
SET "SWAG_CG_CLI_PASSWORD="
SET "SWAG_CG_CLI_USER="

SET "SWAG_CG_CLI_FILE=IHS.yaml"

REM SWAGGER EDITOR

SET "SWAG_EDIT_DB_NAME="
SET "SWAG_EDIT_PASSWORD="
SET "SWAG_EDIT_USER="

REM SWAGGER GENERATOR

SET "SWAG_GEN_DB_NAME="
SET "SWAG_GEN_PASSWORD="
SET "SWAG_GEN_USER="

REM SWAGGER UI

SET "SWAG_UI_DB_NAME="
SET "SWAG_UI_PASSWORD="
SET "SWAG_UI_USER="

REM WILDFLY

SET "WF_DB_NAME="
SET "WF_PASSWORD="
SET "WF_USER="

REM WORDPRESS

SET "WP_DB_NAME=wp"
SET "WP_PASSWORD=admin"
SET "WP_USER=root"

SET "WP_TABLE_PREFIX=pre"


call LOG_UNLOAD sENV
