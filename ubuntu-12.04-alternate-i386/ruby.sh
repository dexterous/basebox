#!/bin/bash -eux

apt-get -y install libyaml-dev
apt-get -y install ruby1.9.3

gem update --system
gem update
gem clean
gem install --no-rdoc --no-ri chef puppet
