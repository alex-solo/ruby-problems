
def is_odd?(num)
  num.remainder(2).abs == 1 # using remainder method
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
