#!/usr/bin/env bash

# sudo yum -y update
sudo yum -y install  nano

# install lateset version of Ansible
sudo yum -y install python-setuptools
## installation of airflow
# requirements
sudo yum -y install gcc
# psutil/_psutil_common.c:9:20: fatal error: Python.h: No such file or directory
sudo yum -y install python-devel   # for python2.x installs
# sudo yum install python34-devel   # for python3.4 installs
# upgrade setutools
sudo pip install --upgrade setuptools
sudo easy_install pip
sudo pip install ansible

#  RuntimeError: By default one of Airflow's dependencies installs a GPL dependency (unidecode). To avoid this dependency set SLUGIFY_USES_TEXT_UNIDECODE=yes in your environment when you install or upgrade Airflow. To force installing the GPL version set AIRFLOW_GPL_UNIDECODE
sudo SLUGIFY_USES_TEXT_UNIDECODE=yes pip install apache-airflow

# # # start the scheduler
# sudo airflow scheduler

# # # initialize the database
# sudo airflow initdb
# # # start the web server, default port is 8080
# sudo AIRFLOW_HOME=~/airflow
# sudo airflow webserver -p 8080
