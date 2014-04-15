#!/usr/bin/env bash

# Vagrant shell box provisioning script for Scripnix project.

# Don't re-provision the box.
if [[ -f /var/vagrant-provisioned ]] ; then
    echo "Vagrant already provisioned."
    exit 0
fi

home=/home/vagrant
project=/vagrant
log=${home}/provisioner.log

echo "Update APT" | tee -a ${log}
apt-get --yes update >>${log} 2>&1

echo "Create symlink to /vagrant project directory" | tee -a ${log}
cd ${home}
ln --symbolic ${project} Scripnix

echo "We're on Yukon Time." | tee -a ${log}
echo "America/Whitehorse" >/etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata >>${log} 2>&1

echo "Set up Scripnix path and shell configuration." | tee -a ${log}
cd ${home}
echo >>.bashrc
echo "# Enable Scripnix" >>.bashrc
echo 'PATH="/vagrant:${PATH}"' >>.bashrc
echo "source /vagrant/rc.bash" >>.bashrc

touch /var/vagrant-provisioned
