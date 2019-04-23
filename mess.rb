def mess_with_vars(one, two, three)
  one = two  # one = "two"
  two = three # two = "three"
  three = one # three = "two"
  #reassigned but the variables outside the method are not affected
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"