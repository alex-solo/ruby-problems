
def is_odd?(num)
  num % 2 == 1 || num % 2 == (-1) # remainder or modulus
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
