require File.dirname(__FILE__) + "/../.ubuntu/session.rb"

iso = "ubuntu-12.04.2-alternate-i386.iso"

session =
  UBUNTU_SESSION.merge( :iso_file => iso,
                        :iso_md5 => "59aef6131a38c760445ddb555bc91f37",
                        :iso_src => "http://releases.ubuntu.com/12.04/#{iso}",
                        :disk_size => "10240",
                        :os_type_id => "Ubuntu" )

Veewee::Session.declare session
