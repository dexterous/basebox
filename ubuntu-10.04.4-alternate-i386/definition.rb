require File.dirname(__FILE__) + "/../.ubuntu/session.rb"

iso = "ubuntu-10.04.4-alternate-i386.iso"

session =
  UBUNTU_SESSION.merge( :iso_file => iso,
                        :iso_md5 => "598b48059bafa2e0314bce8a07a9ff1f",
                        :iso_src => "http://releases.ubuntu.com/10.04.4/#{iso}",
                        :disk_size => "10240",
                        :os_type_id => "Ubuntu" )

Veewee::Session.declare session
