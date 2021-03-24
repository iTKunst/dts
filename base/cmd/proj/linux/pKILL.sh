#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh


log_enter pKILL

source pSTOP.sh
source pDEL.sh

log_exit pKILL

