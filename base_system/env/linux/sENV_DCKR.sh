#!/bin/bash
# shellcheck disable=SC2086


log_enter sENV_DCKR


# DOCKER REPO GROUP
export DCKR_REPO_GRP=docker-repo-nexus.dev.ccg-gcc.gc.ca

# DOCKER REPO HOST
export DCKR_REPO_HST=docker-private-nexus.dev.ccg-gcc.gc.ca


log_exit sENV_DCKR
