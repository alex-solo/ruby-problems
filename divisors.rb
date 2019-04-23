# iterate through every number from 1 to num
# if num % i == 0 then i is a divisor
#   push i to result array
# return array

def divisors(num)
  result = []
  1.upto(num) do |i|
    result << i if num % i == 0
  end
  result
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
