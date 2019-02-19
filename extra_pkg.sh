#install for golang 
yum install -y epel-release 
yum install -y golang python36 sl

#install DB server
#curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | sudo bash
yum --disablerepo=mariadb-main install mariadb-server
yum install -y gcc gcc-c++ cmake 
sl
