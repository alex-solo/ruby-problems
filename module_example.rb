# Initial setup:

class Person
end

class Student < Person
end

class Teacher < Person
  def teach; end
end

class Undergraduate < Student
  def learn; end
end

class Graduate < Student
  def teach; end
end


# with modules:

class Person
end

class Student < Person
end

module Teach
  def teach; end
end

class Teacher < Person
  include Teach
end

class Undergraduate < Student
  def learn; end
end

class Graduate < Student
  include Teach
end