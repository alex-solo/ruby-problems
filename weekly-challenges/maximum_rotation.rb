def rotate(array)
  array[1..-1] + [array[0]]
end

def max_rotation(number)
  arr = number.to_s.split('')
  n = arr.size
  return number if n == 1
  loop do
    arr[-n..-1] = rotate(arr[-n..-1])
    n -= 1
    break if n == 1
  end
  arr.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
