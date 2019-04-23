# Write a program that, given a number, can find the sum of all the multiples of particular numbers up to but not including that number.
# If we list all the natural numbers up to but not including 20 that are multiples of either 3 or 5, we get 3, 5, 6 and 9, 10, 12, 15, and 18. The sum of these multiples is 78.
# Write a program that can find the sum of the multiples of a given set of numbers. If no set of numbers is given, default to 3 and 5.

# input: 2 pieces of info => upto_num and multiples of what? (3 and 5 or 4, 3, and 2). Can be any num of args.
# all the natural numbers up to but not including 20 
#   - (1...20)
# - algorithm: 
#   - in range from 1 to 20, select those nums that are multiples of *args
#   - reduce the selected arr (:+)
  
class SumOfMultiples
  DEFAULT = [3, 5]

  def initialize(*args)
    @args = args.empty? ? DEFAULT : args
  end

  def self.to(limit)
    new.to(limit)
  end

  def to(limit)
    numbers = (0...limit).select do |num|
      @args.any? { |arg| num % arg == 0}
    end
    numbers.inject(&:+)
  end
end

p SumOfMultiples.to(1)
p SumOfMultiples.new(7, 13, 17).to(20)
p SumOfMultiples.new(4, 6).to(15) #args to initialize can be as many numbers as user wants
p SumOfMultiples.to(10) # if not args provided to initialize, then args = 3, 5
