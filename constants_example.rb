# Consntants in unrelated classes

class Student
  SCHOOL = "Western"
end

class Teacher
  def school
  Student::SCHOOL
  end
end

p Teacher.new.school

# Consntants in classes w. hierarchy

class Student
  SCHOOL = "Western"
end

class GraduateStudent < Student
  def school
  SCHOOL
  end
end

p GraduateStudent.new.school


# Consntants in modules

module Teach
  def school
   Student::SCHOOL
  end
end

class Student
  SCHOOL ="Western"
end

class GraduateStudent < Student
  include Teach
end

p GraduateStudent.new.school
