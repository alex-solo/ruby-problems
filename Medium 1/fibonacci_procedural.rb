def fibonacci(num)
  arr = [1, 1]
  
  until arr.size >= num
    arr << arr[-2, 2].inject(:+)
  end
  arr.last
end

p fibonacci(20) #== 6765
p fibonacci(100) #== 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
