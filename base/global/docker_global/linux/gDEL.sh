#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_enter gDEL

log_warn "!!!!!!Warning!!!!!"
log_warn "Will delete all images on your machine!"
while true; do
    read -p "Do you wish to continue?" yn
    case $yn in
        [Yy]* ) docker images -q | xargs docker rmi; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

log_exit gDEL
