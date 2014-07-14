#!/usr/bin/env bash

sudo ln -sf /usr/share/zoneinfo/Japan /etc/localtime
echo 'ZONE="Asia/Tokyo "' > ./clock

sudo chown --reference=/etc/sysconfig/clock ./clock
sudo chmod --reference=/etc/sysconfig/clock ./clock
sudo mv ./clock /etc/sysconfig/clock
