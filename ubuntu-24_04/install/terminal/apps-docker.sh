#!/bin/bash

sudo docker run -d --name docker-hostmanager --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v /etc/hosts:/hosts iamluc/docker-hostmanager
