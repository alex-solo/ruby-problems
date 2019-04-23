# 6 is a perfect number because its divisors are 1, 2, 3 and 6 = 1 + 2 + 3.
# 28 is a perfect number because 28 = 1 + 2 + 4 + 7 + 14.
# Prime numbers 7, 13, etc are deficient by the Nicomachus classification.

# find all divisors excluding the argument number
# Algorithm:
#   - create empty results array
#   - num.downto(1)
#     - push num to results if number % i == 0 to get all divisors
#     - delete first element of array and reduce arr to sum
#   compare sum to argument num

class PerfectNumber
  def self.classify(num)
    PerfectNumber.new.classify(num)
  end
  
  def classify(num)
    raise RuntimeError if num.negative?
    sum = factors(num).inject(:+)
    case
      when sum > num then "abundant"
      when sum < num then "deficient"
      when sum == num then "perfect"
    end
  end
  
  def factors(num)
    (1...num).select { |i| num % i == 0 }
  end
end

p PerfectNumber.classify(12)
p PerfectNumber.classify(6)
p PerfectNumber.classify(13)
