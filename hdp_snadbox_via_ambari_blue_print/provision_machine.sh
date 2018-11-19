#!/usr/bin/env bash

# sudo yum -y update
sudo yum -y install nano
sudo yum -y install epel-release
sudo yum -y install htop

 
### add ansible pub key to  authorized_keys
pub_key="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDmmI4P/2clLwuc6eNGm5+Oeo+f3CI93isM3vfclNK7xvKdRTpXqLn3QsaYOPwT7dRTMkZdfA0mHjQ5dkL2O7G6xTrzawvBBFL9c5VVMm+EKGJc7eSk74K54k3DeCUax0tCtDGi4aJCVLVpQkDv/mmFRyaB9aKMXesMuiep6gHFVM8jzCJ8VmVpSTA31LccWfhoewxW67W3h5oLNVyfM93OV5UNdTBT+MrYdqsftzV+97f6jBMM6LR32hVPThf9gGF5qkZ9UBLfnw6rmJf+7TOxE/3nrVZHnXC8OzJjh+3PG+0BSIUXZrKzI6w409sE60jFzD2Vvc2C9oCUWYYa8p2x vagrant@myAnsible"

if !  grep "${pub_key}"  /home/vagrant/.ssh/authorized_keys ; then
  echo "${pub_key}"  >> /home/vagrant/.ssh/authorized_keys
fi


## local repo is created under the ansible machine
# local_repo_location=10.0.0.20:80
# sudo cat >/etc/yum.repos.d/ambari.repo <<EOL
# [ambari-2.6.2.2]
# name=ambari Version - ambari-2.6.2.2
# baseurl=http://${local_repo_location}/ambari/centos7/2.x/updates/2.6.2.2
# gpgcheck=0
# enable=1
# EOL
#
# sudo cat >/etc/yum.repos.d/hdp.repo <<EOL
# [HDP-2.6.3.0]
# name=HDP Version - HDP-2.6.3.0
# baseurl=http://${local_repo_location}/HDP/centos7/2.x/updates/2.6.3.0
# gpgcheck=0
# enable=1
#
# [HDP-UTILS-1.1.0.21]
# name=HDP-UTILS Version - HDP-UTILS-1.1.0.21
# baseurl=http://${local_repo_location}/HDP-UTILS-1.1.0.21/repos/centos7
# gpgcheck=0
# enabled=1
#
# EOL
