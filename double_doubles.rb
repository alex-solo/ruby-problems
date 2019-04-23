=begin
- input: num
- output: is a number based on rules:
  - double number is a number that if converted to a string and separated into two equal length strings, the separate strings are the same
  - rules: num * 2 if not a double number()
  - num if num is double number
  - if num.to_s.length.odd? then it's not a double number
  
Algorithm:
- convert num to string
- check if num is double number
  - string.length.odd?, not double number
  - for even strings, find middle:
    - idx = (string.length / 2) - 1
    - first half = string[0..idx]
    - second half = string[idx + 1..-1]
    - if first_half != second_half && string.length.odd? then multiply num * 2
    - otherwise return original number
=end

def twice(num)
  string = num.to_s
  length = string.length
  idx = (length / 2) - 1
  first_half = string[0..idx]
  second_half = string[idx + 1..-1]
  
  length.odd? || first_half != second_half ? num * 2 : num
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
