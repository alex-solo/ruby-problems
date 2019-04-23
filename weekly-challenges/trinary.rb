# Write a program that will convert a trinary number, represented as a string (e.g. '102012'), 
# to its decimal equivalent using first principles (without using an existing method or library that can work with numeral systems).
# Trinary numbers can only contain three symbols: 0, 1, and 2. Invalid trinary entries should convert to decimal number 0.
# The last place in a trinary number is the 1's place. The second to last is the 3's place, the third to last is the 9's place, etc.

# all arguments that are invalid => 0 
#   -valid?
#     - char =~ /[0-2]/

# input: string
# algorithm:
#   - take string, split into chars and reverse
#   - map(&:to_i)
  
#   further map the resulting array to transform each value to trinary
#     - first position, number is 2. THen: 2* (3**0)
    
class Trinary
  BASE = 3
  attr_accessor :num_str, :num_arr

  def initialize(num_str)
    @num_str = num_str
    @num_arr = valid? ? num_str.chars.reverse.map(&:to_i) : [0]
  end
  
  def to_decimal
    num_arr.map.with_index { |num, idx| num * (BASE**idx) }.inject(:+)
  end
  
  def valid?
    (@num_str =~ /[^012]/).nil?
  end
end

p Trinary.new('10002221').to_decimal
