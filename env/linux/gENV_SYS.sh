#!/bin/bash
# shellcheck disable=SC2086
# shellcheck disable=SC2153

log_env_enter gENV_SYS

  # Automatically generated values

  source settings.sh
  source gENV_TAGS.sh


  export SYS_BASE=$SYS_NAME$PROJ_TAG
  export SYS_NET=$SYS_NAME$NET_TAG

  export SYS_CONT=$SYS_BASE$CONT_TAG
  export SYS_IMG=$SYS_BASE$IMG_TAG


log_env_exit gENV_SYS
