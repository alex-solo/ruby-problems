# A number 233 in base 10 notation can be understood as a linear combination of powers of 10:

# The rightmost digit gets multiplied by 10**0 = 1
# The next number gets multiplied by 10**1 = 10
# ...
# The n*th number gets multiplied by 10n-1*.
# All these values are summed.

# ex. 233 - n = 3
# reverse the number and break into array. we can then use the index of the number in the array as n

# [3, 3, 2] is the array we want.

# num = 233
# num.to_s.split(//).map(&:to_i).reverse

# inject:
# 3 * 10**idx
# 3 * 10**idx
# 2 * 10**idx

class Octal
  BASE = 8

  def initialize(string)
    @string = string
    @nums = num_valid? ? string.split(//).map(&:to_i).reverse : [0]
  end

  def to_decimal
    @nums.map.with_index { |n, i| n * (BASE**i) }.inject(:+)
  end

  private

  def num_valid?
    @string.chars.none? {|char| char =~ /[^0-7]/}
  end
end

p Octal.new('233').to_decimal
p Octal.new('10').to_decimal
p Octal.new('1').to_decimal
p Octal.new('0').to_decimal
p Octal.new('011').to_decimal
p Octal.new('6789').to_decimal
