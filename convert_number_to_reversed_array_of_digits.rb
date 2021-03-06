def reversed_number(num)
  string_num = num.to_s.reverse
  string_num.to_i
end

p reversed_number(12345) #== 54321
p reversed_number(12213) #== 31221
p reversed_number(456) #== 654
p reversed_number(12000) #== 21 # Note that zeros get dropped!
p reversed_number(1) #== 1
