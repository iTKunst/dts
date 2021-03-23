#!/bin/bash
# shellcheck disable=SC2086

log_enter gENV_TKNS

  export BCK_SLASH=\\
  export COLON=:
  export DASH=-
  export DOT=.
  export FOR_SLASH=/
  export STAR=*

  export DIR_SLASH=$FOR_SLASH

  export DIR_CURR=$DOT$DIR_SLASH
  export DIR_UP=$DOT$DOT$DIR_SLASH


log_exit gENV_TKNS


