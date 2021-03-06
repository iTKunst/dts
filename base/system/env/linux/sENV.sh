#!/bin/bash
# shellcheck disable=SC2086


log_enter sENV

source gENV.sh
source sENV_DCKR.sh
source sENV_HOST.sh


# ANSIBLE

export ANS_DB_NAME=
export ANS_PASSWORD=
export ANS_USER=

# API

export API_DB_NAME=
export API_PASSWORD=
export API_USER=

# FREEIPA

export FREE_DB_NAME=
export FREE_PASSWORD=FREE
export FREE_USER=pjldooley@gmail.com

export FREE_CONT_GRP_DIR=/sys/fs/cgroup
export FREE_DOMAIN=ipa.com
export FREE_HOST_GRP_DIR=/sys/fs/cgroup
export FREE_SYSCTL=net.ipv6.conf.all.disable_ipv6=0

# GEOSERVER

export GEO_DB_NAME=
export GEO_PASSWORD=GEO
export GEO_USER=pjldooley@gmail.com

# GOLANG

export GO_DB_NAME=
export GO_PASSWORD=GO
export GO_USER=pjldooley@gmail.com

# GRADLE

export GRDL_DB_NAME=
export GRDL_PASSWORD=GRDL
export GRDL_USER=pjldooley@gmail.com

# GRADLE LIBRARY

export GRDL_LIB_DB_NAME=
export GRDL_LIB_PASSWORD=
export GRDL_LIB_USER=

# JFROG

export JFROG_DB_NAME=
export JFROG_PASSWORD=
export JFROG_LIB_USER=

export JFROG_REG_DEV=docker-dev-local2.art.local
export JFROG_REG_PROD=docker-prod-local2.art.local
export JFROG_REG_REM=docker-remote.art.local
export JFROG_REG_VIRT=docker-virtual.art.local

# KEYCLOAK

export KEY_DB_NAME=
export KEY_PASSWORD=admin
export KEY_USER=admin

export KEY_DBG=true
export KEY_IMPORT=$KEY_CONT_DIR$FOR_SLASH"realm-export.json"
export KEY_LOG_LEVEL=INFO
export KEY_PROXY_FORWARD=true
export KEY_ROOT_LOG_LEVEL=INFO

# MAVEN

export MVN_DB_NAME=
export MVN_PASSWORD=admin
export MVN_USER=admin

# MAVEN LIBRARY

export MVN_LIB_DB_NAME=
export MVN_LIB_PASSWORD=
export MVN_LIB_USER=

# MYSQL

export MS_DB_NAME=sigv2
export MS_PASSWORD=admin
export MS_USER=root

# MYSQL ADMIN

export MS_ADMIN_DB_NAME=
export MS_ADMIN_PASSWORD=admin
export MS_ADMIN_USER=pjldooley@gmail.com

# NANO

export NANO_DB_NAME=
export NANO_PASSWORD=
export NANO_USER=

# NEXUS

export NEXUS_DB_NAME=
export NEXUS_PASSWORD=
export NEXUS_USER=

# NEXUS3

export NEXUS3_DB_NAME=
export NEXUS3_PASSWORD=12345678
export NEXUS3_USER=taghrdooleyp

# NODEJS

export NODE_DB_NAME=
export NODE_PASSWORD=
export NODE_USER=

export NODE_JSON=
export NODE_LOG_LEVEL=info

# OPENAPI CLI

export OA_CLI_DB_NAME=
export OA_CLI_PASSWORD=
export OA_CLI_USER=

export OA_CLI_API_NAME=

# OPENAPI SRVR

export OA_SRVR_DB_NAME=
export OA_SRVR_PASSWORD=
export OA_SRVR_USER=

# PGADMIN

export PG_ADMIN_DB_NAME=
export PG_ADMIN_PASSWORD=admin
export PG_ADMIN_USER=pjldooley@gmail.com

# PORTAINER

export PORT_DB_NAME=
export PORT_PASSWORD=admin123
export PORT_USER=admin

# POSTGIS

export GIS_DB_NAME=
export GIS_PASSWORD=GIS
export GIS_USER=pjldooley@gmail.com

# POSTGRESQL

export PG_DB_NAME=keycloak
export PG_PASSWORD=keycloak
export PG_USER=keycloak

# REACTJS

export REACT_DB_NAME=
export REACT_PASSWORD=
export REACT_USER=

# SMTP

export SMTP_DB_NAME=
export SMTP_PASSWORD=
export SMTP_USER=

# SOAP

export SOAP_DB_NAME=
export SOAP_PASSWORD=
export SOAP_USER=

export SOAP_ART=cvms-scgv-ihs
export SOAP_FILE=APSShipService.wsdl
export SOAP_GRP=ca.gc.ccg-gcc
export SOAP_PKG=ca.gc.ccggcc.cvmsscgv.ihs
export SOAP_VER=1.0.1

# SRVR

export SRVR_DB_NAME=
export SRVR_PASSWORD=
export SRVR_USER=

# SRVR2

export SRVR2_DB_NAME=
export SRVR2_PASSWORD=
export SRVR2_USER=

# SWAGGER CODEGEN CLI

export SWAG_CG_CLI_DB_NAME=
export SWAG_CG_CLI_PASSWORD=
export SWAG_CG_CLI_USER=

export SWAG_CG_CLI_FILE=IHS.yaml

# SWAGGER EDITOR

export SWAG_EDIT_DB_NAME=
export SWAG_EDIT_PASSWORD=
export SWAG_EDIT_USER=

# SWAGGER GENERATOR

export SWAG_GEN_DB_NAME=
export SWAG_GEN_PASSWORD=
export SWAG_GEN_USER=

# SWAGGER UI

export SWAG_UI_DB_NAME=
export SWAG_UI_PASSWORD=
export SWAG_UI_USER=

# WILDFLY

export WF_DB_NAME=
export WF_PASSWORD=
export WF_USER=

# WORDPRESS

export WP_DB_NAME=wp
export WP_PASSWORD=admin
export WP_USER=root

export WP_TABLE_PREFIX=pre


log_exit sENV