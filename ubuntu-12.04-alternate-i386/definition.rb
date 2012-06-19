require File.dirname(__FILE__) + "/../.ubuntu/session.rb"

iso = "ubuntu-12.04-alternate-i386.iso"

session =
  UBUNTU_SESSION.merge( :iso_file => iso,
                        :iso_md5 => "bcee4c03b704a9b62988505b7d8f3069",
                        :iso_src => "http://releases.ubuntu.com/12.04/#{iso}",
                        :disk_size => "10240",
                        :os_type_id => "Ubuntu" )

Veewee::Session.declare session
