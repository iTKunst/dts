#!/bin/bash
# shellcheck disable=SC2086

log_env_enter gENV_FILES

  source gENV_CATS.sh
  source gENV_NAMES.sh
  source gENV_TKNS.sh

  export API_JSON_FILE=$API$DOT$JSON
  export DCKR_FILE=$DCKR$FILE
  export INIT_FILE=$INIT$DOT$EXT
  export LOG_FILE=log$DOT$EXT
  export SET_PATH_FILE=$SET_PATH$DOT$EXT
  export SETTINGS_FILE=$SETTINGS$DOT$XML


log_env_exit gENV_FILES


