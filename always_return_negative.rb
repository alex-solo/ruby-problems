def negative(num)
  return num if num <= 0
  return -num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
p '-----'

def negative2(num)
  num < 0 ? num : -num
end

p negative2(5) == -5
p negative2(-3) == -3
p negative2(0) == 0
