# question 1

10.times {|length| puts " " * length + "Hello"}

# question 2

# puts "the value of 40 + 2 is " + (40 + 2)

# We are trying to add an integer to a string - this will cause a type error. 
# We can invoke the to_s method on the calculation part or use string interpolation.

puts "the value of 40 + 2 is #{(40+2)}"
puts "the value of 40 + 2 is " + (40+2).to_s

# question 3

