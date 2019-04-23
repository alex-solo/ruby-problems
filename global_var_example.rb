class Person
  @@total_people = 0
  
  def initialize
    @@total_people += 1
  end
  
  def self.total_people
    @@total_people
  end
end

class Student < Person
  @@total_people = 23
end

class Teacher < Person
  
end

john = Person.new
anne = Teacher.new
freddy = Student.new

p Teacher.total_people

