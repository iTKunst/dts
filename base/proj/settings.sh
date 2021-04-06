#!/bin/bash
# shellcheck disable=SC2086


# echo settings [LOADED]


source settings_uri.sh


# DOCKER PASSWORD
export DCKR_PWD=pjldooley@gmail.com

# DOCKER TAG
export DCKR_TAG=2

# DOCKER USER
export DCKR_USR=taghr-dooleyp

# PROJECT MODE (a-attached, d-detached, it-interactive)
export PROJ_MODE=d

# PROJECT NAME
export PROJ_NAME=

# SYSTEM NAME
export SYS_NAME=

# TEMPLATE NAME
export TMPL_NAME=


# LOGGING - MAIN
export LOG_ON=1

export LOG_ENTER_ON=0
export LOG_EXIT_ON=0
export LOG_LOAD_ON=0
export LOG_UNLOAD_ON=0
export LOG_VAR_ON=1

export LOG_ENV_ENTER_ON=0
export LOG_ENV_EXIT_ON=0
export LOG_ENV_VAR_ON=1

# DIRECTORIES
export DIR_DTS=dts

# LOGGING - SUPPLEMENTAL
export LOG_CLONE_ERR_ON=1
export LOG_CMD_ON=1
export LOG_DBG_ON=1
export LOG_DIR_ERR_ON=1
export LOG_DUP_ON=1
export LOG_ERR_ON=1
export LOG_FILE_ERR_ON=1
export LOG_INFO_ON=1
export LOG_INVALID_ON=1
export LOG_WARN_ON=1

# LOGGING - GIT
export LOG_GIT_ON=0


# echo settings [UNLOADED]

