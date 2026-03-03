#!/bin/bash

# 备份原有配置
sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup.$(date +%Y%m%d%H%M%S)

# 写入阿里云源配置
sudo tee /etc/apt/sources.list << 'EOF'
deb https://mirrors.aliyun.com/ubuntu/ noble main restricted universe multiverse
deb https://mirrors.aliyun.com/ubuntu/ noble-updates main restricted universe multiverse
deb https://mirrors.aliyun.com/ubuntu/ noble-backports main restricted universe multiverse
deb https://mirrors.aliyun.com/ubuntu/ noble-security main restricted universe multiverse
EOF

# 更新缓存
sudo apt update
sudo apt upgrade -y
