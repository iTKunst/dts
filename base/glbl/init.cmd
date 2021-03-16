@echo off


rem call LOG_ENTER %DIR_GLBL%%DIR_SLASH%%FILE_INIT%
echo %DIR_GLBL%%DIR_SLASH%%FILE_INIT% [ENTER]

SET "CMD_DC=%DIR_GLBL%%DIR_SLASH%docker_compose%DIR_SLASH%%FILE_INIT%"
echo CMD_DC is %CMD_DC%
CALL %CMD_DC%

SET "CMD_DG=%DIR_GLBL%%DIR_SLASH%docker_global%DIR_SLASH%%FILE_INIT%"
echo CMD_DG is %CMD_DG%
CALL %CMD_DG%

CALL %DIR_GLBL%%DIR_SLASH%docker_project%DIR_SLASH%%FILE_INIT%
CALL %DIR_GLBL%%DIR_SLASH%docker_system%DIR_SLASH%%FILE_INIT%
CALL %DIR_GLBL%%DIR_SLASH%env%DIR_SLASH%%FILE_INIT%
CALL %DIR_GLBL%%DIR_SLASH%git%DIR_SLASH%%FILE_INIT%
CALL %DIR_GLBL%%DIR_SLASH%kube%DIR_SLASH%%FILE_INIT%
CALL %DIR_GLBL%%DIR_SLASH%openshift%DIR_SLASH%%FILE_INIT%

rem call LOG_EXIT %DIR_GLBL%%DIR_SLASH%%FILE_INIT%
echo %DIR_GLBL%%DIR_SLASH%%FILE_INIT% [EXIT]
