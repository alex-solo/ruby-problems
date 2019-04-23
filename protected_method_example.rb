class Student
  def initialize(name, major, age)
    @name = name
    @major = major
    @age = age
  end
  
  def learn; "I am learning"; end
  def pay_tuition; "I am paying tuition"; end
    
  def <(other)
    age < other.age
  end
    
  protected
  
  attr_reader :age
end

class Graduate < Student
end

class Undergraduate < Student
end

anne = Graduate.new("Anne", "history", 29)
freddy = Undergraduate.new("Freddy", "physics", 21)

p (anne < freddy)