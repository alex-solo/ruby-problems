def addition(num1, num2)
  num1 + num2
end

def subtraction(num1, num2)
  num1 - num2
end

def product(num1, num2)
  num1 * num2
end

def quotient(num1, num2)
  num1 / num2
end

def remainder(num1, num2)
  num1 % num2
end

def power(num1, num2)
  num1 ** num2
end

def display_result(num1, num2)
  puts "#{num1} + #{num2} = #{addition(num1, num2)}"
  puts "#{num1} - #{num2} = #{subtraction(num1, num2)}"
  puts "#{num1} * #{num2} = #{product(num1, num2)}"
  puts "#{num1} / #{num2} = #{quotient(num1, num2)}"
  puts "#{num1} % #{num2} = #{remainder(num1, num2)}"
  puts "#{num1} ** #{num2} = #{power(num1, num2)}"
end

puts "Please enter 1st integer"
first = gets.chomp.to_i

puts "Please enter 2nd integer"
second = gets.chomp.to_i

display_result(first, second)
