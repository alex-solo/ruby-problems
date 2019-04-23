class Student
  def initialize(name, major, student_number)
    @name = name
    @major = major
    @student_number = student_number
  end
  
  def learn; "I am learning"; end
  def pay_tuition; "I am paying tuition"; end
    
  def public_student_number
    "#{@name}'s student number is: ****#{student_number[4..-1]}"
  end
    
  private
  
  attr_reader :student_number
    
    
end

class Graduate < Student
end

class Undergraduate < Student
end

anne = Graduate.new("Anne", "history", "23445348798")

p anne.public_student_number
p anne.student_number