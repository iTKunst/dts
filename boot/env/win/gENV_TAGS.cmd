@echo off


rem call LOG_ENTER gENV_TAGS
echo gENV_TAGS [ENTER]

CALL gENV_CATS
CALL gENV_NAMES
CALL gENV_TKNS

SET "ADMIN_TAG=%SPLIT%%ADMIN%"
SET "ANS_TAG=%SPLIT%%ANS%"
SET "API_TAG=%SPLIT%%API%"
SET "CG_TAG=%SPLIT%%CG%"
SET "CLI_TAG=%SPLIT%%CLI%"
SET "CONT_TAG=%SPLIT%%CONT%"
SET "DB_TAG=%SPLIT%%DB%"
SET "DBG_TAG=%SPLIT%%DBG%"
SET "EDIT_TAG=%SPLIT%%EDIT%"
SET "FREE_TAG=%SPLIT%%FREE%"
SET "GEN_TAG=%SPLIT%%GEN%"
SET "GEO_TAG=%SPLIT%%GEO%"
SET "GIS_TAG=%SPLIT%%GIS%"
SET "GIT_TAG=%DOT%%GIT%"
SET "GLBL_TAG=%SPLIT%%GLBL%"
SET "GO_TAG=%SPLIT%%GO%"
SET "GRDL_TAG=%SPLIT%%GRDL%"
SET "IMG_TAG=%SPLIT%%IMG%"
SET "JFROG_TAG=%SPLIT%%JFROG%"
SET "KEY_TAG=%SPLIT%%KEY%"
SET "LIB_TAG=%SPLIT%%LIB%"
SET "MS_TAG=%SPLIT%%MS%"
SET "MVN_TAG=%SPLIT%%MVN%"
SET "NANO_TAG=%SPLIT%%NANO%"
SET "NET_TAG=%SPLIT%%NET%"
SET "NEXUS_TAG=%SPLIT%%NEXUS%"
SET "NG_TAG=%SPLIT%%NG%"
SET "NODE_TAG=%SPLIT%%NODE%"
SET "OA_TAG=%SPLIT%%OA%"
SET "PG_ADMIN_TAG=%SPLIT%%ADMIN%"
SET "PG_TAG=%SPLIT%%PG%"
SET "PORT_TAG=%SPLIT%%PORT%"
SET "REACT_TAG=%SPLIT%%REACT%"
SET "RHCOS_TAG=%SPLIT%%RHCOS%"
SET "SMPL_TAG=%SPLIT%%SMPL%"
SET "SMTP_TAG=%SPLIT%%SMTP%"
SET "SOAP_TAG=%SPLIT%%SOAP%"
SET "SRVR_TAG=%SPLIT%%SRVR%"
SET "SRVR2_TAG=%SPLIT%%SRVR2%"
SET "SWAG_TAG=%SPLIT%%SWAG%"
SET "TRGT_TAG=%SPLIT%%TRGT%"
SET "UI_TAG=%SPLIT%%UI%"
SET "VOL_TAG=%SPLIT%%VOL%"
SET "WF_TAG=%SPLIT%%WF%"
SET "WP_TAG=%SPLIT%%WP%"
SET "WSDL_TAG=%SPLIT%%WSDL%"

rem call LOG_EXIT gENV_TAGS
echo gENV_TAGS [EXIT]
