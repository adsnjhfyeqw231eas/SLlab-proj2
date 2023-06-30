#!/bin/bash

#clean up - containers and images after project2 is successfully run and app is deployed.
docker stop project2-nginx
sleep 3
docker rm project2-nginx
sleep 3
docker rmi tridevg/nginx-june:v1
sleep 1
docker rmi tguha-nginx
docker rmi  ubuntu

# list out
docker ps -a
docker images
