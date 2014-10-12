class Zone

  require 'dns/zone'
  
  include Mongoid::Document

  def self.get
    return DNS::Zone.load('com.zone.example.txt')
  end

  def self.get_zones
    a = []
    File.open("com.zone.example.txt", "r") do |f|
      f.each_line do |line|
        a << line
      end
    end
    return a
  end

end
