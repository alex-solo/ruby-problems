def multiply(num1, num2)
  num1 * num2
end

def power(num, exponent)
  result = 1
  exponent.times do
    result = multiply(result, num)
  end
  result
end

puts power(2, 5)
puts power(9, 2)
