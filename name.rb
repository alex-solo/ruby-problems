class Person
  attr_accessor :first_name, :last_name

  def full_name
    self.first_name
  end
end

mike = Person.new
mike.first_name = 'Michael'
mike.last_name = 'Garcia'
p mike.full_name # => 'Michael Garcia'