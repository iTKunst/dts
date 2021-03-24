#!/bin/bash
# shellcheck disable=SC2086

log_env_enter gENV_FILES

  export API_JSON_FILE=$API$DOT$JSON
  export DOCKER_FILE=$DOCKER$FILE
  export ENV_PROJ_FILE=$ENV_PROJ$DOT$EXT
  export ENV_SYS_FILE=$ENV_SYS$DOT$EXT
  export ENV_TMPL_FILE=$ENV_TMPL$DOT$EXT
  export INIT_FILE=$INIT$DOT$EXT
  export LOG_FILE=log$DOT$EXT
  export SET_PATH_FILE=$SET_PATH$DOT$EXT
  export SETTINGS_FILE=$SETTINGS$DOT$XML


log_env_exit gENV_FILES


