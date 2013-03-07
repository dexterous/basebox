#!/bin/bash -eux

mkdir /mnt/vboxadd
mount /dev/sr1 /mnt/vboxadd
sh /mnt/vboxadd/VBoxLinuxAdditions.run
umount /mnt/vboxadd
rmdir /mnt/vboxadd

mkdir /home/vagrant/.ssh
wget --no-check-certificate \
    'http://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub' \
    -O /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh
