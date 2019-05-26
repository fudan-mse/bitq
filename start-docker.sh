#!/usr/bin/env bash

docker build -t bitq ./webapp/
docker run bitq -p 127.0.0.1:8888:80 -e PORT=80