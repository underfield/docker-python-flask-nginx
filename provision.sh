#!/bin/env bash

sed -i -e "s/^SELINUX=enforcing$/SELINUX=disabled/g" /etc/selinux/config
setenforce 0

# TimeZoneを設定
timedatectl set-timezone Asia/Tokyo
localectl set-locale LANG=ja_JP.UTF-8

# パッケージをアップデート
yum -y update

# Vimインストール
yum -y install vim-enhanced
echo "alias vi='vim'" >> /etc/profile
source /etc/profile

