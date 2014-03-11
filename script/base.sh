# Base install
yum install -y wget curl git

# Update root certs (otherwise Chef client won't install)
#wget -O/etc/pki/tls/certs/ca-bundle.crt http://curl.haxx.se/ca/cacert.pem

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
sed -i "s/^\(.*env_keep = \"\)/\1PATH /" /etc/sudoers

# Ensure NFS mounts work properly
yum install -y nfs-utils

# gcc to install VMware tools
yum install -y gcc kernel-devel kernel-devel-2.6.32-431.el6.x86_64

# install epel
rpm -i http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

# install ansible
yum install ansible --enablerepo=epel --enablerepo=epel-testing -y
