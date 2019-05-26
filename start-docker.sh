#!/usr/bin/env bash

docker build -t bitq ./webapp/
docker run bitq