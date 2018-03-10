class Team
  attr_accessor :name, :motto
  TEAMS = []
  
  def self.all
    TEAMS
  end
  
  def initialize(attributes)
    attributes.each{|k,v| self.send("#{k}=",v)}
    TEAMS << self
  end
end
