=begin
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, 
and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.
Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. 
For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

input: number representing the number of digits in the Fibonacci number
output: number representing the index of the first Fib number that has the number of digits specified as an argument

Algorithm:

- create an array with first two elements [1, 1]
- run a loop that will append a number equal to the sum of two previous numbers
  - arr[idx - 1] + arr[idx - 2]
- break out of the loop once the result of multiplication is equal to or greater than specified argument
- current idx + 1 is the resulting idx in Fib sequence

=end

def find_fibonacci_index_by_length(num)
  arr = [1, 1]
  idx = 2
  loop do
    sum = arr[idx - 1] + arr[idx - 2]
    arr << sum
    idx += 1 
    break if sum.to_s.length >= num
  end
  idx
end

p find_fibonacci_index_by_length(2) #== 7
p find_fibonacci_index_by_length(10) #== 45
p find_fibonacci_index_by_length(100) #== 476
p find_fibonacci_index_by_length(1000) #== 4782
p find_fibonacci_index_by_length(10000) #== 47847
