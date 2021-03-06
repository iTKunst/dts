#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_enter gKILL

gSTOP.sh
gDEL.sh

log_exit gKILL

