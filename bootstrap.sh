#!/usr/bin/env bash

set -ex

# Disable Selinux and Iptables
sed s/SELINUX=enforcing/SELINUX=disabled/ /etc/selinux/config -i
chkconfig iptables off
chkconfig ip6tables off

yum update -y


## Install AWS Tools and Git
rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum install -y cloud-init git jq cloud-utils python-pip
pip install awscli


## Remove Password from root
passwd -d root
sed -e '9,$d' /etc/rc.local -i


## Set sudo rule for cloud-user
cat <<EOL > cloud-init
cloud-user ALL = NOPASSWD: ALL

# User rules for cloud-user
cloud-user ALL=(ALL) NOPASSWD:ALL
Defaults:cloud-user !requiretty
EOL

install -o root -g root -m 0440 cloud-init /etc/sudoers.d/cloud-init
rm -f cloud-init
