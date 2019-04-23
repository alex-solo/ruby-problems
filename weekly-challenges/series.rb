# Write a program that will take a string of digits and give you all the possible consecutive number series of length n in that string.

# For example, the string "01234" has the following 3-digit series:

# - 012
# - 123
# - 234
# And the following 4-digit series:

# - 0123
# - 1234
# And if you ask for a 6-digit series from a 5-digit string, you deserve whatever you get.

# input: 
# string  "123456"
# n => 2 (consecutive numbers)

# output:
# 12
# 23
# 34
# 45
# 56

# array = string.split('')
# then we can iterate through array with #each_cons(n)
# if n > array.size, return an error messages

class Series
  def initialize(num_string)
    @num_string = num_string
    @arr = @num_string.split('').map(&:to_i)
  end  
  
  def slices(num)
    num > @arr.size ? raise(ArgumentError) : @arr.each_cons(num).to_a
  end
  
end

series = Series.new("123456")

puts series.slices(6)

# def series(string, n)
#   arr = string.split('')
#   arr.each_cons(n) do |pair|
#     puts "- #{pair.join}"
#   end
# end

# series("123456", 2)
# series("01234", 3)
