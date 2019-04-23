=begin
The time of day can be represented as the number of minutes before or after midnight. 
If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.
Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input
You may not use ruby's Date and Time classes.

Further Exploration

How would you approach this problem if you were allowed to use ruby's Date and Time classes? Suppose you also needed to consider the day of week? 
(Assume that delta_minutes is the number of minutes before or after midnight between Saturday and Sunday; 
in such a method, a delta_minutes value of -4231 would need to produce a return value of Thursday 01:29.)

Understand the problem:

- input
  - integer, positive or negative
  - what if it's zero? what about float?
- output
  - string in "hh:mm" format 
- rules
  - 24 hr clock
  - 0 integer returns midnight ("00:00"), no time shift
  - every 60 minutes adds or subtracts an hour
  - hours are 0-23
  - loop back to 0 hour when 24 hours 'elapses'
- model the problem:
  - given an integer, add or subtract that number of minutes to/from midnight ("00:00")
  - determine how many hours and how many minutes in integer (/60)
  - ex. if -30, time before "00:00" is "23:30"
  - ex. 0 - 1 hour = 23 ex. 0 + 24 = 0
  - output string in "00:00" format

Test Cases/Examples

- below

Data Structure (how to represent input data?)

- choices: numbers
- use data structure to encode rules/requirements? (usually a hash) or use code?
  - choose to use code, hash would be cumbersome

Algorithm:

- using Time class, create a new instance for today's date not including the time
- add the number of minutes (num) converted to seconds
- using strftime method, output day of the week, hour, minutes.
=end

def time_of_day(num)
 time = Time.new(2017, 2, 9) + (num * 60)
 time.strftime('%A %H:%M')
end

p time_of_day(0) #== "00:00" # tests edge case to make sure 0 integer returns midnight
p time_of_day(1440) #== '00:00' # 24 hours later should also return midnight
p time_of_day(-3) #== "23:57" # does the negative integer properly subtract to get to previous hour? i.e. does 23 come before 0?
p time_of_day(35) #== "00:35" 
p time_of_day(-1437) #== "00:03" # how does the method deal with large integers that span days?
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"
