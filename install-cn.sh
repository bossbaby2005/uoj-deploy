#!/bin/bash
wget https://dev.tencent.com/u/bossbaby/p/uoj-deploy/git/raw/master/install.tar
tar -xvf install.tar
apt update && apt install -y docker.io
cd install/bundle
docker build . -t uoj:latest
cd ../..
rm -rf install