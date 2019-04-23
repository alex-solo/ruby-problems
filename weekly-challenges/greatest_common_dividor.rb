# # build a method that will return a greatest common dividor given two numbers as input

# iterate though all numbers until the smaller of the two numbers
#   -smallest num? 
  # =>  smaller = num1 < num2 ? num1 : num2
# add dividor to results array if num1 % i == 0 && num2 % i == 0
# return arr.last

def common_dividor(num1, num2)
  limit = [num1, num2].min
  limit.downto(1) do |int|
    return int if num1 % int == 0 && num2 % int == 0
  end
end

p common_dividor(5, 15) # => 5
p common_dividor(9, 15) # => 3
p common_dividor(11, 100) # => 1
p common_dividor(40, 64) # => 8
