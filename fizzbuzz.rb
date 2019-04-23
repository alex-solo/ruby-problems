=begin
- input: two ints that describe a range
- output: a string with a list of every number in the range with some nums replaced by:
  - 'Fizz' if num%3 == 0
  - 'Buzz' if num%5 == 0
  - 'FizzBuzz' if num%3 == 0 && num%5 == 0
Algorithm:
- use map over the range applying the rules above
- join resulting array (', ')
=end

def fizzbuzz(start, finish)
  result = (start..finish).map do |num|
    if num % 3 == 0 && num % 5 == 0
      'FizzBuzz'
    elsif num % 5 == 0
      'Buzz'
    elsif num % 3 == 0
      'Fizz'
    else
      num
    end
  end
  result.join(', ')
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
