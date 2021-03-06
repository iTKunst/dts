# For Portainer

dockerd --tlsverify --tlscacert=ca.pem --tlscert=server-cert.pem --tlskey=server-key.pem \
-H=0.0.0.0:2376

docker --tlsverify --tlscacert=ca.pem --tlscert=cert.pem --tlskey=key.pem -H=$HOST:2376 version


## On Client

in ~/.profile
export DOCKER_HOST=tcp://spectre:2376
export DOCKER_TLS_VERIFY=1
copy ca.pem, cert.pem, key.pem to ~.docker/

 
For Just TLS enabled daemon no verification on either server or client
docker -d -H tcp://ubuntuvm:2376 --tls\ 
                                 --tlskey ~/docker-tls/server-key.pem \
                                 --tlscert ~/docker-tls/server-cert.pem

## On Server

copy server-cert.pem server-key.pem to /usr/share/ca-certificates/dockerd

in /etc/docker/daemon.json
"hosts": ["unix:///var/run/docker.sock", "tcp://127.0.0.1:2375"],
"tls": true,
"tlscert": "/usr/share/ca-certificates/dockerd/server-cert.pem",
"tlskey": "~/usr/share/ca-certificates/dockerd/server-key.pem"
