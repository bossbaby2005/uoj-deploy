#!/bin/bash
wget https://github.com/bossbaby2005/uoj-deploy/blob/master/install.zip
unzip install.zip

cd install/bundle
docker build . -t uoj:latest