#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh


log_enter sKILL

sSTOP.sh
sDEL.sh

log_exit sKILL
