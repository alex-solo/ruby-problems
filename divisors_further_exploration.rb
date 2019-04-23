# factors are paired
#   - 1 and 12
#   - 2 and 6
#   - 3 and 4
# take square root of the number
# iterate through all numbers (1 to square root) selecting those that are divisors
# second half of the divisors can be found by dividing original num by every num in first half

def divisors(num)
  sq_rt = Math.sqrt(num)
  first_half = (1..sq_rt).select { |n| num % n == 0 }
  second_half = first_half.map { |i| num / i }
  (first_half + second_half.sort).uniq
end

p divisors(1) #== [1]
p divisors(7) #== [1, 7]
p divisors(12) #== [1, 2, 3, 4, 6, 12]
p divisors(98) #== [1, 2, 7, 14, 49, 98]
p divisors(99400891) #== [1, 9967, 9973, 99400891] # may take a minute
p divisors(999962000357)
