#!/bin/bash
# shellcheck disable=SC2086


log_enter /$DIR_GLBL/docker_system/init

cp ./$DIR_GLBL/docker_system/linux/*.sh ./bin

log_exit /$DIR_GLBL/docker_system/init
