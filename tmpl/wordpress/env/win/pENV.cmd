@echo off
call %DIR_BIN%%DIR_SLASH%LOG_ENTER pENV


SET PROJ_LABEL=%SYS_NAME%
SET PROJ_NET=%SYS_NET%

SET "PROJ_CONT=%WF_CONT%"
SET "PROJ_CONT_DATA_DIR=%WF_CONT_DATA_DIR%"
SET "PROJ_CONT_DIR=%WF_CONT_DIR%"
SET "PROJ_CONT_HOME_DIR=%WF_CONT_HOME_DIR%"
SET "PROJ_HOST_DIR=%WF_HOST_DIR%"
SET "PROJ_IMG=%WF_IMG%"
SET "PROJ_PORT_INT=%WF_PORT_INT%"
SET "PROJ_VOL=%WF_VOL%"
SET "PROJ_VOL_DIR=%WF_VOL_DIR%"



call LOG_EXIT pENV

