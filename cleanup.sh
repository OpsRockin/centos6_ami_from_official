#!/usr/bin/env bash

set -ex

sudo yum clean all

sudo rm -rf /tmp/*
sudo rm -f /etc/ssh/ssh_host_*
cd /var/log
sudo find /var/log/ -type f -name '*.log' -exec sudo cp /dev/null {} \;
sudo cp /dev/null /var/log/syslog

yes | sudo cp /dev/null /root/.ssh/authorized_keys
yes | sudo cp /dev/null /root/.bash_history
history -c

