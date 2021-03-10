@echo off


call LOG_ENTER gENV_DIRS

CALL gENV_CATS
CALL gENV_NAMES
CALL gENV_TKNS

SET "API_DIR=%FOR_SLASH%%API%"
SET "APP_DIR=%FOR_SLASH%%APP%"
SET "CODE_DIR=%FOR_SLASH%%CODE%"
SET "CONTENT_DIR=%FOR_SLASH%%CONTENT%"
SET "DATA_DIR=%FOR_SLASH%%DATA%"
SET "DBG_DIR=%FOR_SLASH%%DBG%"
SET "DCKR_DIR=%BCK_SLASH%%DCKR%"
SET "DPLY_DIR=%FOR_SLASH%%DEPLOY%"
SET "GEN_DIR=%FOR_SLASH%%GEN%"
SET "GIS_DIR=%FOR_SLASH%%GIS%"
SET "GLBL_DIR=%BCK_SLASH%%DIR_GLBL%"
SET "GO_DIR=%FOR_SLASH%%GO%"
SET "GRDL_DIR=%CURRENT%%GRDL%%"
SET "HME_DIR=%FOR_SLASH%%HME%"
SET "HTML_DIR=%FOR_SLASH%%HTML%"
SET "JBOSS_DIR=%FOR_SLASH%%JBOSS%"
SET "KEYCLOAK_DIR=%FOR_SLASH%%KEYCLOAK%"
SET "LIB_DIR=%FOR_SLASH%%LIB%"
SET "LINUX_DIR=%FOR_SLASH%%$LINUX%"
SET "LOCAL_DIR=%FOR_SLASH%%$LOCAL%"
SET "M2_DIR=%FOR_SLASH%%M2%"
SET "MS_DIR=%FOR_SLASH%%MS%"
SET "MVN_DIR=%FOR_SLASH%%MVN%"
SET "MYSQL_DIR=%FOR_SLASH%%MYSQL%"
SET "NANO_DIR=%FOR_SLASH%%NANO%"
SET "NEXUS_DATA_DIR=%FOR_SLASH%%NEXUS%%DASH%%%DATA%"
SET "NGINX_DIR=%FOR_SLASH%%NGINX%"
SET "NODE_DIR=%FOR_SLASH%%NODE%"
SET "OA_DIR=%FOR_SLASH%%OA%"
SET "OPT_DIR=%FOR_SLASH%%OPT%"
SET "PG_ADMIN_DIR=%FOR_SLASH%%PG%%SPLIT%%ADMIN%"
SET "PG_DIR=%FOR_SLASH%%PG%"
SET "PROJ_DIR=%BCK_SLASH%%DIR_PROJ%"
SET "REACT_DIR=%FOR_SLASH%%REACT%"
SET "RUN_DIR=%FOR_SLASH%%RUN%"
SET "SHARE_DIR=%FOR_SLASH%%SHARE%"
SET "SNGL_DIR=%FOR_SLASH%%SHARE%"
SET "SOAP_DIR=%FOR_SLASH%%SOAP%"
SET "SPECS_DIR=%FOR_SLASH%%SPECS%v
SET "SRC_DIR=%FOR_SLASH%%SRC%"
SET "SWAG_DIR=%FOR_SLASH%%SWAG%"
SET "SYS_DIR=%BCK_SLASH%%SYS_NAME%"
SET "TEMPL_DIR=%FOR_SLASH%%TEMPL%"
SET "THEMES_DIR=%FOR_SLASH%%THEMES%"
SET "TMP_DIR=%FOR_SLASH%%TMP%"
SET "TRGT_DIR=%FOR_SLASH%%TRGT%"
SET "USR_DIR=%FOR_SLASH%%USR%"
SET "VAR_DIR=%FOR_SLASH%%VAR%%"
SET "WF_DIR=%FOR_SLASH%%WF%"
SET "WIN_DIR=%BCK_SLASH%%WIN%"
SET "WP_DIR=%FOR_SLASH%%WP%"
SET "WWW_DIR=%FOR_SLASH%%WWW%"

SET "CERT_DIR=%USR_DIR%%LOCAL_DIR%%SHARE_DIR%%CA_CERT_DIR%"
SET "TMPL_DIR=%DIR_DTS%%TEMPL_DIR%%TMPL_NAME%
SET "WP_CONTENT_DIR=%WP_DIR%%DASH%%CONTENT%"

call LOG_EXIT gENV_DIRS
