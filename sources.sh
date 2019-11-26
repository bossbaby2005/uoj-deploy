#!/bin/bash
apt update && apt install -y docker.io
mkdir -p /etc/docker
tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://nuwe9oy7.mirror.aliyuncs.com"]
}
EOF
systemctl daemon-reload
systemctl restart docker
sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list