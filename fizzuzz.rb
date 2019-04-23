=begin
Write a method that takes two arguments: the first is the starting number, and 
the second is the ending number. Print out all numbers between the two numbers, except if a number 
is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number 
is divisible by 3 and 5, print "FizzBuzz".


- num % 3 == 0, print "Fizz"
- num % 5 == 0, print "Buzz"
- num % 3 == 0 && num % 5 == 0, print "FizzBuzz"

- start.upto(finish)
  - print every number with above conditions

=end

def fizzbuzz(start, finish)
  arr = start.upto(finish).map do |i|
    case 
    when i % 3 == 0 && i % 5 == 0 then "FizzBuzz"
    when i % 3 == 0 then "Fizz"
    when i % 5 == 0 then "Buzz"
    else i
    end
  end
  arr.join(', ')
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
