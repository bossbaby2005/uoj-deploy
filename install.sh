#!/bin/bash
wget https://raw.githubusercontent.com/bossbaby2005/uoj-deploy/master/install.tar
tar -xvf install.tar
apt update && apt install -y docker.io
cd install/bundle
docker build . -t uoj:latest
cd ../..
rm -rf install