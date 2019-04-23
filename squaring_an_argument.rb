def multiply(num1, num2)
  num1 * num2
end

def power_to(num, exponent)
  str = 'multiply(num, num)'
  (exponent - 2).times do
    str.gsub!('num, num', 'num, multiply(num, num)')
  end
  eval(str)
end

puts power_to(2, 5)
puts power_to(3, 3)
puts power_to(5, 3)
puts power_to(9, 2)