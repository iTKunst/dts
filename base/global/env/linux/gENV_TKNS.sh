#!/bin/bash
# shellcheck disable=SC2086

log_enter gENV_TKNS

export BCK_SLASH=\\
export COLON=:
export DASH=-
export DOT=.
export FOR_SLASH=/
export SPLIT=_

export CURRENT=$DOT$SLASH
export UP=$DOT$DOT$SLASH

log_exit gENV_TKNS


