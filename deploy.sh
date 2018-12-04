#!/bin/bash

# This script will setup the environment to run a flask cluster behind a nginx LB

# Clean up docker relevant instances
docker rm -f restapp0
docker rm -f restapp1

# Now the code - Pending
# rm -rf ~/flask_cluster/restapp
# git clone ... 

# Run docker instances with Flask
docker run --name restapp0 --restart=always -p 8080:80 -v $PWD/restapp:/app -d jazzdd/alpine-flask
docker run --name restapp1 --restart=always -p 8081:80 -v $PWD/restapp:/app -d jazzdd/alpine-flask

echo 'Your instances should now be running on your public IP/hostname ports 8080 and 8081 ...'

