#!/usr/bin/env bash


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
