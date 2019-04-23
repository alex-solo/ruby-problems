# +++++ Talk about class inheritance

# When a class is said to inherit from another class it means that the subclass is given access to attributes 
# and methods in the superclass

# This is useful when classes have a hierarchichal relationship so when a class inherits behaviours from
# another class we can expand functionality of a sub-class and avoid redundant code.

# For example: (initial setup)

class Student
  def initialize(name, major)
    @name = name
    @major = major
  end
  
  def learn; "I am learning"; end
  def pay_tuition; "oh no, I am paying"; end
end

class Graduate < Student
  
end

class Undergraduate < Student
  
end

# In this way we can define methods that are common to both the Undergraduate and Graduate classes
# in the Student super class, then "fine tune" the subclasses to have specifc attributes and behaviours

class Graduate < Student
  def teach; "I am teaching" end
  def mark_papers; end
end

steve = Graduate.new("Steve", "chemistry")
kelly = Undergraduate.new("Kelly", "history")

p steve
p kelly.learn

p steve.teach
p kelly.teach

# Class inhertance gets more complicated when we run into situations where we have common methods across classes
# that do not have hierarchichal relationship or if a class already inherits from a superclass:

class Teacher
  def teach; end
end

# This is where modules come in, and modules are similar to classes in that they contain attributes and behaviours
# that when included in a class are made accessible by instances of that class - they help us expand functionality of classes

# But unlike classes that have a hierarchichal relationship, a module can be thought of as a container
# for grouping related methods or constants that are useable in other classes and it's Ruby's way of
# supporting multiple inheritance 

# So this is one of the main uses of modules -> mixing in behaviours

# EXAMPLE:

module Teach
  def teach; "I am teaching"; end
end

class Graduate < Student
  include Teach
end

class Teacher
  include Teach
end

# When we include modules in a class, all methods defined in a module are accessible by
# instances of that class.

# mention method lookup path?
