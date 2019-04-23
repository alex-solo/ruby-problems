def factors(number)
  return "Number is invalid" if number < 0 || number == 0
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

p factors(0)
p factors(34)
p factors(100)
p factors(-4)
p factors(93)