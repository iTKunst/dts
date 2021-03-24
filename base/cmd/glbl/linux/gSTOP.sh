#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh


log_enter gSTOP

log_warn "!!!!!!Warning!!!!!"
log_warn "Stops and removes all containers on your machine!"
while true; do
    read -p "Do you wish to continue?" yn
    case $yn in
        [Yy]* ) docker ps -a -q | xargs docker stop; docker ps -a -q | xargs docker rm; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

log_exit gSTOP

