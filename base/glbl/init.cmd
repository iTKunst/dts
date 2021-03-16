@echo off


rem call LOG_ENTER %DIR_GLBL%%DIR_SLASH%%FILE_INIT%
echo %DIR_GLBL%%DIR_SLASH%%FILE_INIT% [ENTER]

SET "CMD_DC=%DIR_GLBL%%DIR_SLASH%docker_compose%DIR_SLASH%%FILE_INIT%"
echo CMD_DC is %CMD_DC%
CALL %CMD_DC%

SET "CMD_DG=%DIR_GLBL%%DIR_SLASH%docker_global%DIR_SLASH%%FILE_INIT%"
echo CMD_DG is %CMD_DG%
CALL %CMD_DG%

SET "CMD_DP=%DIR_GLBL%%DIR_SLASH%docker_project%DIR_SLASH%%FILE_INIT%"
echo CMD_DP is %CMD_DP%
CALL %CMD_DP%

SET "CMD_DS=%DIR_GLBL%%DIR_SLASH%docker_system%DIR_SLASH%%FILE_INIT%"
echo CMD_DS is %CMD_DS%
CALL %CMD_DS%

SET "CMD_ENV=%DIR_GLBL%%DIR_SLASH%env%DIR_SLASH%%FILE_INIT%"
echo CMD_ENV is %CMD_ENV%
CALL %CMD_ENV%

SET "CMD_GIT=%DIR_GLBL%%DIR_SLASH%git%DIR_SLASH%%FILE_INIT%"
echo CMD_GIT is %CMD_GIT%
CALL %CMD_GIT%

SET "CMD_KUBE=%DIR_GLBL%%DIR_SLASH%kube%DIR_SLASH%%FILE_INIT%"
echo CMD_KUBE is %CMD_KUBE%
CALL %CMD_KUBE%

SET "CMD_OS=%DIR_GLBL%%DIR_SLASH%openshift%DIR_SLASH%%FILE_INIT%"
echo CMD_OS is %CMD_OS%
CALL %CMD_OSv%

rem call LOG_EXIT %DIR_GLBL%%DIR_SLASH%%FILE_INIT%
echo %DIR_GLBL%%DIR_SLASH%%FILE_INIT% [EXIT]
