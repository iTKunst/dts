#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh


log_enter gKILL

gSTOP.sh
gDEL.sh

log_exit gKILL

