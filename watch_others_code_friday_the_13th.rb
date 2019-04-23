require 'pry'
=begin

Understand the problem:

- input
  - number representing year
- output
  - number representing how many times there was a Friday the 13th that year
- model the problem:
  - given a string, convert first 2 chars to hours and 2 last chars to minutes
  - after_midnight, time - midnight
  - before_midnight, midnight - time
  - output string in "00:00" format

Test Cases/Examples

- below

Data Structure (how to represent input data?)

- choices: numbers
- use data structure to encode rules/requirements? (usually a hash) or use code?
  - choose to use code

Algorithm:

- initiate new date instance starting on January 13th
- loop through each month of that year checking if the 13ths was a Friday
- incrememnt counter by 1 if there is
- return counter after reaching December

=end
require 'date'

def friday_13th?(year)
  month = 1
  counter = 0
  date = Date.new(year, month, 13)
  
  loop do
    break if month > 12
    date = Date.new(year, month, 13)
    counter += 1 if date.friday?
    month += 1
  end
  
  counter
end

p friday_13th?(1976)
p friday_13th?(2015)
p friday_13th?(1986)
