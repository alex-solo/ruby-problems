=begin
If you take a number like 735291, and rotate it to the left, you get 352917. 
If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. 
Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits 
fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place 
and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.
Write a method that takes an integer as argument, and returns the maximum rotation of that argument. 
You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.
=end

# 735291 => 352917 (no digits in place) arr.push(arr.slice!(-6))
# 352917 => 329175  (1 digit in place) arr.push(arr.slice!(-5))
# 329175 => 321759 (2 digits in place) arr.push(arr.slice!(-4))
# 321759 => 321597 (3 digits in place) arr.push(arr.slice!(-3))
# 321597 => 321579 (4 digits in place) arr.push(arr.slice!(-2)) #maximum rotation

def rotate(str)
  str[1..-1] + str[0]
end

def max_rotation(number)
  str_num = number.to_s
  n = str_num.length
  return number if n == 1
  
  loop do
    str_num[-n..-1] = rotate(str_num[-n..-1])
    n -= 1
    break if n == 1
  end
  str_num.to_i
end

p max_rotation(735291) #== 321579
p max_rotation(3) #== 3
p max_rotation(35) #== 53
p max_rotation(105) #== 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) #== 7_321_609_845
p '-----------'

# Further exploration:
# Does not rely on 'rotate' method

def max_rotation2(number)
  arr = number.to_s.split('')
  n = arr.size
  (-n).upto(-2) do |i|
    arr.push(arr.slice!(i))
  end
  arr.join.to_i
end

p max_rotation2(735291) #== 321579
p max_rotation2(3) #== 3
p max_rotation2(35) #== 53
p max_rotation2(105) #== 15 # the leading zero gets dropped
p max_rotation2(8_703_529_146) #== 7_321_609_845
p '-----------'

def rotate2(arr)
  arr[1..-1] + [arr[0]]
end

def max_rotation3(number)
  arr = number.to_s.split('')
  arr.each_index { |idx| arr[idx..-1] = rotate2(arr[idx..-1]) }
  arr.join.to_i
end
    
p max_rotation3(735291) #== 321579
p max_rotation3(3) #== 3
p max_rotation3(35) #== 53
p max_rotation3(105) #== 15 # the leading zero gets dropped
p max_rotation3(8_703_529_146) #== 7_321_609_845
p '-----------'