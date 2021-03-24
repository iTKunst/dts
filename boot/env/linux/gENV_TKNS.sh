#!/bin/bash
# shellcheck disable=SC2086

log_env_enter gENV_TKNS

  export BCK_SLASH=\\
  export COLON=:
  export DASH=-
  export DOT=.
  export FOR_SLASH=/
  export SPLIT=_
  export STAR=*
  export WEB_SLASH=/

  export DIR_CURR=$DOT$DIR_SLASH
  export DIR_UP=$DOT$DOT$DIR_SLASH


log_env_exit gENV_TKNS


