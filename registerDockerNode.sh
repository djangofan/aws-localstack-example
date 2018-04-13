#!/bin/bash
 
# In Virtualbox, make sure the following folders are permanently shared with your host and automounted:
# /Volumes, /private, /tmp, and /Users
 
# also, set in your /etc/hosts file:
#    192.168.99.100  mine.regence.com
 
# access at mine:8080
docker run -d --restart unless-stopped -p 4567-4583:4567-4583 -p 8080:8080 localstack/localstack
 
# access at mine:9000
docker run -d --restart unless-stopped -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer --no-auth
