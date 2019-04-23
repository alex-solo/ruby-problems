=begin
def fibonacci_last(num)
  arr = [1, 1]
  
  until arr.size >= num
    arr << arr[-2, 2].inject(:+)
  end
  arr.last.to_s[-1].to_i
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
p '-------'
=end

# LS Solution:

def fibonacci_last2(num)
  arr = [1, 1]
  3.upto(num) do
    arr = [arr.last, (arr.last + arr.first) % 10]
  end
  arr.last
end

def fib_last(num)
  0.upto(num) do |i|
    p fibonacci_last2(i)
  end
end

fib_last(120)

=begin
p fibonacci_last2(15)        # -> 0 (the 15th Fibonacci number is 610)
p fibonacci_last2(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last2(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last2(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last2(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last2(123456789) # -> 4
=end