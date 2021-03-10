@echo off


call LOG_ENTER gENV

REM Automatically generated or default values

CALL settings
CALL gENV_DIRS
CALL gENV_FILES
CALL gENV_TAGS
CALL gENV_TKNS

REM PROJECT

SET "PROJ_TAG=%SPLIT%%PROJ_NAME%

REM SYS

SET "SYS_BASE=%SYS_NAME%%PROJ_TAG%
SET "SYS_NET=%SYS_NAME%%NET_TAG%"

SET "SYS_CONT=%SYS_BASE%%CONT_TAG%"
SET "SYS_IMG=%SYS_BASE%%IMG_TAG%"


# ANSIBLE

SET "ANS_CONT=%SYS_CONT%%ANS_TAG
SET "ANS_CONT_DIR="
SET "ANS_HOST_DIR="
SET "ANS_IMG=%SYS_IMG%%ANS_TAG"
SET "ANS_PORT_INT="
SET "ANS_VOL="

SET "ANS_CONT_MNT_DIR=%ANS_CONT_DIR%"
SET "ANS_HOST_MNT_DIR=%ANS_HOST_DIR%"


# API

SET "API_CONT=%SYS_CONT%%API_TAG
SET "API_CONT_DIR=%OPT_DIR%%APP_DIR%"
SET "API_HOST_DIR=CODE_DIR"
SET "API_IMG=%SYS_IMG%%API_TAG"
SET "API_PORT_INT=8080"
SET "API_VOL="

SET "API_CONT_MNT_DIR=%API_CONT_DIR%%TRGT_DIR%"
SET "API_HOST_MNT_DIR=%API_HOST_DIR%%TRGT_DIR%"

REM DOCKER

SET "DCKR_URI=%TMPL_DIR%%DCKR_DIR%%BCK_SLASH%%DCKR_FILE%"

REM FREEIPA

SET "FREE_CONT=%SYS_CONT%%FREE_TAG%"
SET "FREE_CONT_DIR=%DATA_DIR%"
SET "FREE_HOST_DIR=%DATA_DIR%"
SET "FREE_IMG=%SYS_IMG%%FREE_TAG%"
SET "FREE_PORT_INT=8080"
SET "API_VOL="

SET "FREE_CONT_MNT_DIR=%FREE_CONT_DIR%%TRGT_DIR%"
SET "FREE_HOST_MNT_DIR=%FREE_HOST_DIR%%DATA_DIR%"

REM GEOSERVER

SET "GEO_CONT=%SYS_CONT%%GEO_TAG%"
SET "GEO_CONT_DIR=%OPT_DIR%%GEO_DIR%"
SET "GEO_HOST_DIR=%DATA_DIR%"
SET "GEO_IMG=%SYS_IMG%%GEO_TAG%"
SET "GEO_PORT_INT=8080"
SET "API_VOL="

SET "GEO_CONT_MNT_DIR=%GEO_CONT_DIR%%DATA_DIR%"
SET "GEO_HOST_MNT_DIR=%GEO_HOST_DIR%%DATA_DIR%"

# GOLANG

SET "GO_CONT=%SYS_CONT%%GO_TAG%"
SET "GO_CONT_DIR=%GO_DIR%SRC_DIR%%APP_DIR%"
SET "GO_HOST_DIR="
SET "GO_IMG=%SYS_IMG%%GO_TAG%"
SET "GO_PORT_INT=8080"
SET "API_VOL="

SET "GO_CONT_MNT_DIR=%GO_CONT_DIR%%TRGT_DIR%"
SET "GO_HOST_MNT_DIR=%GO_HOST_DIR%%DATA_DIR%"

REM GRADLE

SET "GRDL_CONT=%SYS_CONT%%GRDL_TAG%"
SET "GRDL_CONT_DIR=%$HME_DIR%%GRDL_DIR%"
SET "GRDL_HOST_DIR=%$CODE_DIR%"
SET "GRDL_IMG=%SYS_IMG%%GRDL_TAG%"
SET "GRDL_PORT_INT=8080"
SET "API_VOL="

SET "GRDL_CONT_MNT_DIR=%GRDL_CONT_DIR%%TRGT_DIR%"
SET "GRDL_HOST_MNT_DIR=%GRDL_HOST_DIR%"

REM GRADLE LIBRARY

SET "GRDL_LIB_CONT=%GRDL_CONT%%LIB_TAG%"
SET "GRDL_LIB_CONT_DIR=%HME_DIR%%GRDL_DIR%%SRC_DIR%"
SET "GRDL_LIB_HOST_DIR=%CODE_DIR%"
SET "GRDL_LIB_IMG=%GRDL_IMG%%LIB_TAG%"
SET "GRDL_LIB_PORT_INT="
SET "API_VOL="

SET "GRDL_LIB_CONT_DATA_DIR=%GRDL_LIB_CONT_DIR%%TRGT_DIR%"
SET "GRDL_LIB_HOST_MNT_DIR=%GRDL_LIB_CONT_DIR%"

REM JAVA APPLICATION

SET "JAVA_CONT=%SYS_CONT%%JAVA_TAG%"
SET "JAVA_CONT_DIR=%$USR_DIR%%SYS_DIR%"
SET "JAVA_HOST_DIR=%CODE_DIR%"
SET "JAVA_IMG=%SYS_IMG%%JAVA_TAG%"
SET "JAVA_PORT_INT=8080"
SET "API_VOL="

SET "JAVA_CONT_DATA_DIR=%JAVA_CONT_DIR%%TRGT_DIR%"
SET "JAVA_HOST_MNT_DIR=%JAVA_HOST_DIR%%TRGT_DIR%"

REM JFROG APPLICATION

SET "JFROG_CONT=%SYS_CONT%%JFROG_TAG%"
SET "JFROG_CONT_DIR=%OPT_DIR%%SYS_DIR%"
SET "JFROG_HOST_DIR=%SRC_DIR%"
SET "JFROG_IMG=%SYS_IMG%%JFROG_TAG%"
SET "JFROG_PORT_INT=8081"
SET "JFROG_VOL="

SET "JFROG_CONT_MNT_DIR=%JFROG_CONT_DIR%%SRC_DIR%"
SET "JFROG_HOST_MNT_DIR=%JFROG_HOST_DIR%%TRGT_DIR%"

SET "JFROG_CONT_DATA_DIR=%JFROG_CONT_DIR$TRGT_DIR%"
SET "JFROG_PORT_INT_ADMIN=80"
SET "JFROG_PORT_INT_DBG=443"

# KEYCLOAK

SET "KEY_CONT=%SYS_CONT%%KEY_TAG%"
SET "KEY_CONT_DIR=%TMP_DIR%"
SET "KEY_HOST_DIR=%SYS_DIR%%KEYCLOAK_DIR%"
SET "KEY_IMG=%SYS_IMG%%KEY_TAG%"
SET "KEY_PORT_INT=8080"
SET "KEY_VOL="

SET "KEY_CONT_DATA_DIR=%KEY_CONT_DIR%%TRGT_DIR%"
SET "KEY_HOST_MNT_DIR=%KEY_HOST_DIR%%TRGT_DIR%"

SET "KEY_PORT_INT_ADMIN=9990

REM MAVEN

SET "MVN_CONT=%SYS_CONT%%MVN_TAG%"
SET "MVN_CONT_DIR=%VAR_DIR%%MVN_DIR%"
SET "MVN_HOST_DIR=%CODE_DIR%"
SET "MVN_IMG=%SYS_IMG%%MVN_TAG%"
SET "MVN_PORT_INT=8080"
SET "MVN_PORT_INT_DBG=5005"
SET "MVN_VOL="

SET "MVN_CONT_DATA_DIR=%MVN_CONT_DIR%%TRGT_DIR%"
SET "MVN_HOST_MNT_DIR=%MVN_CONT_DIR%%TRGT_DIR%"

SET "MVN_CONT_CFG_DIR=%MVN_CONT_DIR%%$M2_DIR%"
SET "MVN_HOST_CFG_DIR=%SYS_DIR%%MVN_DIR%"
SET "MVN_PORT_INT_DBG=5005"
SET "MVN_USER=root"

REM MAVEN LIBRARY

SET "MVN_LIB_CONT=%MVN_CONT%%LIB_TAG%"
SET "MVN_LIB_CONT_DIR=%VAR_DIR%%MVN_DIR%"
SET "MVN_LIB_HOST_DIR=%CODE_DIR%"
SET "MVN_LIB_IMG=%MVN_IMG%%LIB_TAG%"
SET "MVN_LIB_PORT_INT=8080"
SET "MVN_LIB_VOL="

SET "MVN_LIB_CONT_MNT_DIR=%MVN_LIB_CONT_DIR%"
SET "MVN_LIB_HOST_MNT_DIR=%MVN_LIB_HOST_DIR%"

REM MYSQL

SET "MS_CONT=%SYS_CONT%%MS_TAG%"
SET "MS_CONT_DIR=%VAR_DIR%LIB_DIR%%MYSQL_DIR%"
SET "MS_CONT_DIR=%DOT%%SYS_DIR%%DATA_DIR%%MS_DIR%"
SET "MS_HOST_DIR=%DATA_DIR%"
SET "MS_IMG=%SYS_IMG%%MS_TAG%"
SET "MS_PORT_INT=3306"
SET "MVN_VOL="

REM NANO SERVER

SET "NANO_CONT=%SYS_CONT%%NANO_TAG%"
SET "NANO_CONT_DIR=%USR_DIR%%SRC_DIR%%APP_DIR%"
SET "NANO_HOST_DIR=%DATA_DIR%"
SET "NANO_IMG=%SYS_IMG%%NANO_TAG%"
SET "NANO_PORT_INT=8080"
SET "MVN_VOL="

SET "NANO_CONT_MNT_DIRv=%NANO_CONT_DIR%%DATA_DIR%"
SET "NANO_HOST_MNT_DIR=%NANO_HOST_DIR%%DATA_DIR%"

REM NETWORK

SET "NET_CONT=%SYS_CONT%%NET_TAG%"
SET "NET_CONT_DIR="
SET "NET_HOST_DIR="
SET "NET_IMG=%SYS_IMG%%NET_TAG%"
SET "NET_PORT_INT="
SET "NET_VOL="

SET "NET_CONT_MNT_DIR="
SET "NET_HOST_MNT_DIR="

REM NEXUS

SET "NEXUS_CONT=%SYS_CONT%%NEXUS_TAG%"
SET "NEXUS_CONT_DIR=%NEXUS_DATA_DIR%"
SET "NEXUS_HOST_DIR=%SRC_DIR%"
SET "NEXUS_IMG=%SYS_IMG%%NEXUS_TAG%"
SET "NEXUS_PORT_INT=8081"
SET "NEXUS_VOL="

SET "NEXUS_CONT_MNT_DIR=%NEXUS_CONT_DIR%"
SET "NEXUS_HOST_MNT_DIR=%NEXUS_HOST_DIR%"

SET "NEXUS_CONT_PATH=/nexus"
SET "NEXUS_JAVA_OPTS=-server -XX:MaxPermSize=192m -Djava.net.preferIPv4Stack=true"
SET "NEXUS_LAUNCH_CONF=./conf/jetty.xml ./conf/jetty-requestlog.xml"
SET "NEXUS_MAX_HEAP=768m"
SET "NEXUS_MIN_HEAP=256m"

REM NEXUS3

SET "NEXUS3_CONT=%SYS_CONT%%NEXUS3_TAG%"
SET "NEXUS3_CONT_DIR=%NEXUS_DATA_DIR%"
SET "NEXUS3_HOST_DIR=%SRC_DIR%"
SET "NEXUS3_IMG=%SYS_IMG%%NEXUS3_TAG%"
SET "NEXUS3_PORT_INT=8081"
SET "NEXUS3_VOL="

SET "NEXUS3_CONT_MNT_DIR=%NEXUS3_CONT_DIR%"
SET "NEXUS3_HOST_MNT_DIR=%NEXUS3_HOST_DIR%"

SET "NEXUS3_CONT_PATH=/nexus"
SET "NEXUS3_JAVA_OPTS=-server -XX:MaxPermSize=192m -Djava.net.preferIPv4Stack=true"
SET "NEXUS3_LAUNCH_CONF=./conf/jetty.xml ./conf/jetty-requestlog.xml"
SET "NEXUS3_MAX_HEAP=768m"
SET "NEXUS3_MIN_HEAP=256m"

REM NG_CLI

SET "NG_CLI_CONT=%SYS_CONT%%NG_TAG%%CLI_TAG%"
SET "NG_CLI_CONT_DIR=%NG_CLI_DATA_DIR%"
SET "NG_CLI_HOST_DIR=%SRC_DIR%"
SET "NG_CLI_IMG=%SYS_IMG%%NG_TAG%%CLI_TAG%"
SET "NG_CLI_PORT_INT=8081"
SET "NG_CLI_VOL="

SET "NG_CLI_CONT_MNT_DIR=%NG_CLI_CONT_DIR%"
SET "NG_CLI_HOST_MNT_DIR=%NG_CLI_HOST_DIR%"

REM NODE

SET "NODE_CONT=%SYS_CONT%%NODE_TAG%"
SET "NODE_CONT_DIR=%USR_DIR%%$SRC_DIR%%APP_DIR%"
SET "NODE_HOST_DIR=%DATA_DIR%"
SET "NODE_IMG=%SYS_IMG%%NODE_TAG%"
SET "NODE_PORT_INT=3000"
SET "NODE_VOL="

SET "NODE_CONT_MNT_DIR=%NODE_CONT_DIR%"
SET "NODE_HOST_MNT_DIR=%NODE_CONT_DIR%

REM OPENAPI

SET "OA_CONT=%SYS_CONT%%OA_TAG%"
SET "OA_CONT_DIR="
SET "OA_HOST_DIR="
SET "OA_IMG=%SYS_IMG%%OA_TAG%"
SET "OA_PORT_INT="
SET "OA_VOL="

SET "OA_CONT_MNT_DIR=%OA_CONT_DIR%"
SET "OA_HOST_MNT_DIR=%OA_HOST_DIR%"

REM OPENAPI CLI

SET "OA_CLI_CONT=%OA_CONT%%CLI_TAG%"
SET "OA_CLI_CONT_DIR=%OPT_DIR%%OA_DIR%"
SET "OA_CLI_HOST_DIR=%API_DIR%"
SET "OA_CLI_IMG=%OA_IMG%%CLI_TAG%"
SET "OA_CLI_PORT_INT=8080"
SET "OA_CLI_VOL="

SET "OA_CLI_CONT_DIR=%OA_CLI_CONT_DIR%"
SET "OA_CLI_HOST_DIR=%OA_CLI_HOST_DIR%"

REM OPENAPI ONLINE

SET "OA_SRVR_CONT=%OA_CONT%%SRVR_TAG%"
SET "OA_SRVR_CONT_DIR=%OPT_DIR%%SRVR_DIR%"
SET "OA_SRVR_HOST_DIR=%API_DIR%"
SET "OA_SRVR_IMG=%OA_IMG%%SRVR_TAG%"
SET "OA_SRVR_PORT_INT=8080"
SET "OA_SRVR_VOL="

SET "OA_SRVR_CONT_MNT_DIR=%OA_SRVR_CONT_DIR%"
SET "OA_SRVR_HOST_MNT_DIR=%OA_SRVR_HOST_DIR%"

REM PGADMIN

SET "PG_ADMIN_CONT=%SYS_CONT%%PG_ADMIN_TAG%"
SET "PG_ADMIN_CONT_DIR=%OPT_DIR%%PG_ADMIN_DIR%"
SET "PG_ADMIN_HOST_DIR=%SYS_IMG%%PG_ADMIN_TAG%"
SET "PG_ADMIN_IMG=%SYS_IMG%%PG_ADMIN_TAG%"
SET "PG_ADMIN_PORT_INT=80"
SET "PG_ADMIN_VOL="

SET "PG_ADMIN_CONT_MNT_DIR=%PG_ADMIN_CONT_DIR%"
SET "PG_ADMIN_HOST_MNT_DIR=%PG_ADMIN_CONT_DIR%"

REM PHPMYADMIN

SET "MS_ADMIN_CONT=%MS_CONT%%ADMIN_TAG%"
SET "MS_ADMIN_CONT_DIR="
SET "MS_ADMIN_HOST_DIR="
SET "MS_ADMIN_IMG=%MS_IMG%%ADMIN_TAG%"
SET "MS_ADMIN_PORT_INT=80"
SET "MS_ADMIN_VOL="

SET "MS_ADMIN_CONT_MNT_DIR="
SET "MS_ADMIN_HOST_MNT_DIR="

# PORTAINER

SET "PORT_CONT=%SYS_CONT%%PORT_TAG%"
SET "PORT_CONT_DIR=%VAR_DIR%%RUN_DIR%%DCKR_DIR%%DOT%%SOCK%"
SET "PORT_HOST_DIR="
SET "PORT_IMG=%SYS_IMG%%PORT_TAG%"
SET "PORT_PORT_INT=9000"
SET "PORT_VOL="

SET "PORT_CONT_MNT_DIR=%DATA%"
SET "PORT_HOST_MNT_DIR=%PORT_HOST_DIR%"

REM POSTGIS

SET "GIS_CONT=%SYS_CONT%%GIS_TAG%"
SET "GIS_CONT_DIR=%OPT_DIR%%GIS_DIR%"
SET "GIS_HOST_DIR=%DOT%%SYS_DIR%%DATA_DIR%%GIS_DIR%"
SET "GIS_IMG=%SYS_IMG%%GIS_TAG%"
SET "GIS_PORT_INT=80"
SET "GIS_VOL="

SET "GIS_CONT_MNT_DIR=%GIS_CONT_DIR%%TRGT_DIR%"
SET "GIS_HOST_MNT_DIR=%GIS_HOST_DIR%%TRGT_DIR%"

REM POSTGRESQL

SET "PG_CONT=%SYS_CONT%%PG_TAG%"
SET "PG_CONT_DIR=%OPT_DIR%%PG_DIR%"
SET "PG_HOST_DIR=%DOT%%DIR_SYS%%DATA_DIR%%PG_DIR"
SET "PG_IMG=%SYS_IMG%%PG_TAG%"
SET "PG_PORT_INT=5432"
SET "PG_VOL="

SET "PG_CONT_MNT_DIR=%PG_CONT_DIR%%DATA_DIR%"
SET "PG_HOST_MNT_DIR="

REM REACTJS

SET "REACT_CONT=%SYS_CONT%%REACT_TAG%"
SET "REACT_CONT_DIR=%HME_DIR%%NODE_DIR%%APP_DIR%"
SET "REACT_HOST_DIR=%CODE_DIR%"
SET "REACT_IMG=%SYS_IMG%%REACT_TAG%"
SET "REACT_PORT_INT=80"
SET "REACT_VOL="

SET "REACT_CONT_MNT_DIR=%REACT_CONT_DIR%%TRGT_DIR%"
SET "REACT_HOST_MNT_DIR=%REACT_HOST_DIR%%TRGT_DIR%"

# RHCOS

SET "RHCOS_CONT=%SYS_CONT%%RHCOS_TAG%"
SET "RHCOS_CONT_DIR=%HME_DIR%%NODE_DIR%%APP_DIR%"
SET "RHCOS_HOST_DIR=%CODE_DIR%"
SET "RHCOS_IMG=%SYS_IMG%%RHCOS_TAG%"
SET "RHCOS_PORT_INT=80"
SET "RHCOS_VOL="

SET "RHCOS_CONT_MNT_DIR=%RHCOS_CONT_DIR%TRGT_DIR
SET "RHCOS_HOST_MNT_DIR=%RHCOS_HOST_DIR%TRGT_DIR

REM SMTP

SET "SMTP_CONT=%SYS_CONT%%SMTP_TAG%"
SET "SMTP_CONT_DIR=%OPT_DIR%%APP_DIR%"
SET "SMTP_HOST_DIR="
SET "SMTP_IMG=%SYS_IMG%%SMTP_TAG%"
SET "SMTP_PORT_INT=80"
SET "SMTP_VOL="

SET "SMTP_CONT_MNT_DIR=%SMTP_CONT_DIR%%TRGT_DIR%"
SET "SMTP_HOST_MNT_DIR=%SMTP_HOST_DIR%%TRGT_DIR%"

REM SOAP

SET "SOAP_CONT=%SYS_CONT%%SOAP_TAG%"
SET "SOAP_CONT_DIR=%OPT_DIR%%APP_DIR%"
SET "SOAP_HOST_DIR="
SET "SOAP_IMG=%SYS_IMG%%SOAP_TAG%"
SET "SOAP_PORT_INT=80"
SET "SOAP_VOL="

SET "SOAP_CONT_MNT_DIR=%SOAP_CONT_DIR%%TRGT_DIR%"
SET "SOAP_HOST_MNT_DIR=%SOAP_HOST_DIR%%TRGT_DIR%"

REM SRVR

SET "SRVR_CONT=%SYS_CONT%%SRVR_TAG%"
SET "SRVR_CONT_DIR=%OPT_DIR%%APP_DIR%"
SET "SRVR_HOST_DIR="
SET "SRVR_IMG=%SYS_IMG%%SRVR_TAG%"
SET "SRVR_PORT_INT=80"
SET "SRVR_VOL="

SET "SRVR_CONT_MNT_DIR=%SRVR_CONT_DIR%%CODE_DIR%"
SET "SRVR_HOST_MNT_DIR=%SRVR_HOST_DIR%%CODE_DIR%"

REM SRVR2

SET "SRVR2_CONT=%SYS_CONT%%SRVR2_TAG%"
SET "SRVR2_CONT_DIR=%OPT_DIR%%APP_DIR%"
SET "SRVR2_HOST_DIR="
SET "SRVR2_IMG=%SYS_IMG%%SRVR2_TAG%"
SET "SRVR2_PORT_INT=8080"
SET "SRVR2_VOL="

SET "SRVR2_CONT_MNT_DIR=%SRVR2_CONT_DIR%"
SET "SRVR2_HOST_MNT_DIR=%SRVR2_HOST_DIR%"

REM SWAGGER

SET "SWAG_CONT=%SYS_CONT%%SWAG_TAG%"
SET "SWAG_CONT_DIR=%OPT_DIR%%APP_DIR%"
SET "SWAG_HOST_DIR="
SET "SWAG_IMG=%SYS_IMG%%SWAG_TAG%"
SET "SWAG_PORT_INT="
SET "SWAG_VOL="

SET "SWAG_CONT_MNT_DIR=%SWAG_CONT_DIR%%CODE_DIR%"
SET "SWAG_HOST_MNT_DIR=%SWAG_HOST_DIR%%CODE_DIR%"

REM SWAGGER CODEGEN CLI

SET "SWAG_CG_CLI_CONT=%SWAG_CONT%%CG_TAG%%CLI_TAG%"
SET "SWAG_CG_CLI_CONT_DIR=%OPT_DIR%%APP_DIR%"
SET "SWAG_CG_CLI_HOST_DIR="
SET "SWAG_CG_CLI_IMG=%SWAG_IMG%%CG_TAG%%CLI_TAG%"
SET "SWAG_CG_CLI_PORT_INT=80"
SET "SWAG_CG_CLI_VOL="

SET "SWAG_CG_CLI_CONT_MNT_DIR=%SWAG_CG_CLI_CONT_DIR%%TRGT_DIR%"
SET "SWAG_CG_CLI_HOST_MNT_DIR=%SWAG_CG_CLI_HOST_DIR%%TRGT_DIR%"

REM SWAGGER EDITOR

SET "SWAG_EDIT_CONT=%SWAG_CONT%%EDIT_TAG%"
SET "SWAG_EDIT_CONT_DIR=%VAR_DIR%%SPECS_DIR%"
SET "SWAG_EDIT_HOST_DIR=%API_DIR%"
SET "SWAG_EDIT_IMG=%SWAG_IMG%%EDIT_TAG%"
SET "SWAG_EDIT_PORT_INT=8080"
SET "SWAG_EDIT_VOL="

SET "SWAG_EDIT_CONT_MNT_DIR=%SWAG_EDIT_CONT_DIR%%TRGT_DIR%"
SET "SWAG_EDIT_HOST_MNT_DIR=%SWAG_EDIT_HOST_DIR%%TRGT_DIR%"

REM SWAGGER GENERATOR

SET "SWAG_GEN_CONT=%SWAG_CONT%%GEN_TAG%"
SET "SWAG_GEN_CONT_DIR=%VAR_DIR%%SPECS_DIR%"
SET "SWAG_GEN_HOST_DIR=%API_DIR%"
SET "SWAG_GEN_IMG=%SWAG_IMG%%GEN_TAG%"
SET "SWAG_GEN_PORT_INT=8080"
SET "SWAG_GEN_VOL="

SET "SWAG_GEN_CONT_MNT_DIR=%SWAG_GEN_CONT_DIR%%TRGT_DIR%"
SET "SWAG_GEN_HOST_MNT_DIR=%SWAG_GEN_HOST_DIR%%TRGT_DIR%"

SET "SWAG_GEN_JSON=%SWAG_GEN_CONT_DIR%SLASH%%API_JSON%"

REM SWAGGER UI

SET "SWAG_UI_CONT=%SWAG_CONT%%UI_TAG%"
SET "SWAG_UI_CONT_DIR=%VAR_DIR%%SPECS_DIR%"
SET "SWAG_UI_HOST_DIR=%API_DIR%"
SET "SWAG_UI_IMG=%SWAG_IMG%%UI_TAG%"
SET "SWAG_UI_PORT_INT=8080"
SET "SWAG_UI_VOL="

SET "SWAG_UI_CONT_MNT_DIR=%SWAG_UI_CONT_DIR%%TRGT_DIR%"
SET "SWAG_UI_HOST_MNT_DIR=%SWAG_UI_HOST_DIR%%TRGT_DIR%"
SET "SWAG_UI_JSON=%SWAG_UI_CONT_DIR%SLASH%%API_JSON%"

# TERRAFORM

SET "TERR_CONT=%SWAG_CONT%%UI_TAG%"
SET "TERR_CONT_DIR=%VAR_DIR%%SPECS_DIR%"
SET "TERR_HOST_DIR=%API_DIR%"
SET "TERR_IMG=%SWAG_IMG%%UI_TAG%"
SET "TERR_PORT_INT=8080"
SET "TERR_VOL="

SET "TERR_CONT_DATA_DIR=%TERR_CONT_DIR%%TRGT_DIR%"
SET "TERR_HOST_MNT_DIR=%TERR_CONT_DIR%%TRGT_DIR%"

SET "TERR_JSON=%TERR_CONT_DIR%%SLASH%%API_JSON%"

# TYPESCRIPT

SET "TS_CONT=%SWAG_CONT%%UI_TAG%"
SET "TS_CONT_DIR=%VAR_DIR%%SPECS_DIR%"
SET "TS_HOST_DIR=%API_DIR%"
SET "TS_IMG=%SWAG_IMG%%UI_TAG%"
SET "TS_PORT_INT=8080
SET "TS_VOL="

SET "TS_CONT_MNT_DIR=%TS_CONT_DIR%%TRGT_DIR%"
SET "TS_HOST_MNT_DIR=%TS_CONT_DIR%%TRGT_DIR%"

SET "TS_JSON=%TS_CONT_DIR%%SLASH%%API_JSON%"

# VOLUME

SET "VOL_CONT=%SYS_CONT%%VOL_TAG%"
SET "VOL_CONT_DIR="
SET "VOL_HOST_DIR="
SET "VOL_IMG=%SYS_IMG%%VOL_TAG%"
SET "VOL_PORT_INT="
SET "VOL_VOL="

SET "VOL_CONT_MNT_DIR="
SET "VOL_HOST_MNT_DIR="

REM WILDFLY

SET "WF_CONT=%SYS_CONT%%WF_TAG%"
SET "WF_CONT_DIR=%OPT_DIR%%JBOSS_DIR%%WF_DIR%"
SET "WF_HOST_DIR=%CONF_DIR%"
SET "WF_IMG=%SYS_IMG%%WF_TAG%"
SET "WF_PORT_INT=9990"
SET "WF_VOL="

SET "WF_CONT_MNT_DIR=%WF_CONT_DIR%%TRGT_DIR%"
SET "WF_HOST_MNT_DIR=%WF_CONT_DIR%%TRGT_DIR%"

SET "WF_PORT_INT_APPS=8080"
SET "WF_PORT_INT_DBG=8787"

REM WORDPRESS

SET "WP_CONT=%SYS_CONT%%WP_TAG%"
SET "WP_CONT_DIR=%VAR_DIR%%WWW_DIR%%HTML_DIR%"
SET "WP_HOST_DIR=%WP_CONTENT_DIR%"
SET "WP_IMG=%SYS_IMG%%WP_TAG%"
SET "WP_PORT_INT=8080"
SET "WP_VOL="

SET "WP_CONT_MNT_DIR=%WP_CONT_DIR%%TRGT_DIR%"
SET "WP_HOST_MNT_DIR=%$WP_HOST_DIR%"

SET "WP_PORT_INT_APPS=80"
SET "WP_PORT_INT_DBG=90"
SET "WP_TABLE_PREFIX=%SYS_NAME%%SPLIT%"

call LOG_EXIT gENV


