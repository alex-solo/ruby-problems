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
    
class Hex
  BASE = 16
  HEX = ('0'..'9').to_a + ('a'..'f').to_a
  
  def initialize(hex_str)
    @hex_str = hex_str.downcase
  end
  
  def to_decimal
    return 0 unless valid?
    @hex_str.chars.reverse.map.with_index do |char, idx|
      HEX.index(char) * (BASE**idx)
    end.inject(:+)
  end
  
  def valid?
    /[^0-9a-f]/.match(@hex_str).nil?
  end
end

p Hex.new('7DE').to_decimal
