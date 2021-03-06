#!/bin/bash
# shellcheck disable=SC2086

log_enter gENV_FILES

source gENV_CATS.sh
source gENV_NAMES.sh
source gENV_TKNS.sh

export API_JSON_FILE=$API$DOT$JSON
export DCKR_FILE=$DCKR$FILE

log_exit gENV_FILES


