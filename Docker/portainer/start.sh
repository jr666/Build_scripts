#!/bin/bash

docker run -d -p 8999:8999 --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce -p :8999 

