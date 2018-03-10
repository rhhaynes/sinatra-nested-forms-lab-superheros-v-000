class Superhero
  attr_reader :name, :power, :bio
  HEROES = []
  
  def self.all
    HEROES
  end
  
  def initialize(attributes)
    attributes.each{|k,v| self.send("#{k}=",v)}
    HEROES << self
  end
end