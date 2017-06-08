#!/usr/bin/env bash

docker build -t tahitidevops/website:builder .
cd ../.. && docker run -v $PWD:/app -p 4000:4000 -t tahitidevops/website:builder