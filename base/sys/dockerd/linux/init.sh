#!/bin/bash
# shellcheck disable=SC2086


echo dockerd$OS_DIR/init called


cp ../daemon.json /etc/docker

export DCKR_DIR=/usr/share/ca-certificates/dockerd

if [ ! -d $DCKR_DIR ]; then
  sudo mkdir $DCKR_DIR
fi

sudo cp ../certs/server-cert.pem $DCKR_DIR
sudo cp ../certs/server-key.pem $DCKR_DIR

sudo systemctl daemon-reload
sudo systemctl restart docker.service

echo dockerd$OS_DIR/init exited
