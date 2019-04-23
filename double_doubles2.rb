def twice(num)
  string = num.to_s
  length = string.length
  idx = (length / 2)
  first_half = idx.zero? ? '' : string[0..idx - 1]
  second_half = string[idx..-1]
  
  first_half != second_half ? num * 2 : num
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
