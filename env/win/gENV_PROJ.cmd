@echo off


rem call %DIR_BIN%%DIR_SLASH%LOG_ENTER gENV_CATS
echo gENV_PROJ [ENTER]

  CALL settings

  CALL gENV_DIRS
  CALL gENV_FILES
  CALL gENV_NAMES
  CALL gENV_TKNS
  CALL gENV_WEB


  if [ -z "$PROJ_MODE" ]; then
    log_cmd PROJ_MODE may be set it in settings.sh.
    log_info Setting to default.
    export PROJ_MODE=MODE
  fi
  log_env_var PROJ_MODE $PROJ_MODE

SET "WF=wf"
SET "WP=wp"


rem call LOG_EXIT gENV_CATS
echo gENV_CATS [EXIT]
