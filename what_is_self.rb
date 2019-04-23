# - self is a reference to the current object

# - depends on the scope it is defined in

# self inside a class, inside an instance method refers to the calling object
# self inside a class but outside an instance method refers to the class itself

class Student
  puts self
  
  def self.what_is_self?
    self
  end
  
  def what_is_self?
    self
  end
  
end

anne = Student.new
p anne.what_is_self?

p Student.what_is_self?
