ambari_version=2.6.2.2
hdp_version=2.6.3.0


sudo wget -nv "http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/${ambari_version}/ambari.repo" -O /etc/yum.repos.d/ambari.repo
# pour facilité, avoir la meme base url que le repo distant
local_repo_path=/var/www/html

sudo mkdir -p "${local_repo_path}/ambari/centos7/2.x/updates/${ambari_version}"
sudo reposync -p "${local_repo_path}/ambari/centos7/2.x/updates/${ambari_version}" -r "ambari-${ambari_version}"
sudo createrepo  "${local_repo_path}/ambari/centos7/2.x/updates/${ambari_version}"


sudo wget -nv "http://public-repo-1.hortonworks.com/HDP/centos7/2.x/updates/${hdp_version}/hdp.repo" -O /etc/yum.repos.d/hdp.repo

#name=HDP Version - HDP-${hdp_version}
#baseurl=http://public-repo-1.hortonworks.com/HDP/centos7/2.x/updates/${hdp_version}

sudo mkdir -p "${local_repo_path}/HDP/centos7/2.x/updates/${hdp_version}"
sudo reposync -p "${local_repo_path}/HDP/centos7/2.x/updates/${hdp_version}"  -r "HDP-${hdp_version}"
sudo createrepo "${local_repo_path}/HDP/centos7/2.x/updates/${hdp_version}"


sudo mkdir -p "${local_repo_path}/HDP-UTILS-1.1.0.21/repos/centos7"
sudo reposync -p "${local_repo_path}/HDP-UTILS-1.1.0.21/repos/centos7" -r HDP-UTILS-1.1.0.21
sudo createrepo "${local_repo_path}/HDP-UTILS-1.1.0.21/repos/centos7"
