module Walkable
  attr_reader :gait

  def to_s
    name
  end

  def walk
    puts "#{self} #{gait} forward."
  end
end

class Person
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
    @gait = 'strolls'
  end
end

class Cat
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
    @gait = "saunters"
  end
end

class Cheetah < Cat
  def initialize(name)
    super(name)
    @gait = "runs"
  end
end

class Noble < Person
  attr_reader :title, :first_name

  def initialize(first_name, title)
    @first_name = first_name
    @title = title
    @gait = "struts"
  end

  def name
    "#{title} #{first_name}"
  end
end

byron = Noble.new("Byron", "Lord")
byron.walk
# => "Lord Byron struts forward"

mike = Person.new("Mike")
mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
flash.walk
# => "Flash runs forward"
