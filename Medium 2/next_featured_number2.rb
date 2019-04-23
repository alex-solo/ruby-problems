# combination of LS and my solution:

def is_featured?(num)
  num.to_s.chars.uniq.size == num.to_s.length
end

def featured(num)
  num += 1 until num.odd? && num % 7 == 0
  loop do
    return num if is_featured?(num)
    num += 14
    break if num > 9876543210
  end
  "No possible solution"
end

p featured(12) #== 21
p featured(20) #== 21
p featured(21) #== 35
p featured(997) #== 1029
p featured(1029) #== 1043
p featured(999_999) #== 1_023_547
p featured(999_999_987) #== 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

p is_featured?(21)
p is_featured?(35)
p is_featured?(1029)
p is_featured?(1023547)
p is_featured?(12)
p is_featured?(39)
