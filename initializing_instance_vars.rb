class Student
  def initialize(name, major)
    @name = name
    @major = major
  end
  
  def learn; "I am learning"; end
  def pay_tuition; "I am paying tuition"; end
    
  def give_scholarship
    @scholarship = true
  end
end

class Graduate < Student
end

class Undergraduate < Student
end

anne = Graduate.new("Anne", "history")
freddy = Undergraduate.new("Freddy", 'physics')

freddy.scholarship
p freddy
p anne