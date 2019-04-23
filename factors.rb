def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors  
end


p factors(9)
p factors(16)
p factors(42)
p factors(-34)
p factors(0)
