=begin
The time of day can be represented as the number of minutes before or after midnight. 
If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.
Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input
You may not use ruby's Date and Time classes.

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

- convert input into hours and minutes
- if adding
  - minutes = num%60
  - hours = num/60
    - if hours <= 24, use hours as is
    - if the result is > 24, hours%24 should be output instead.
- if subtracting
  - minutes = 60 - num%60
  - hours: 
    - hours = 24 - (num/60 + 1)
- if resulting hour = 24, convert to 0.
- convert hour and minutes to string of 2-digit format
- concatenate string for final output
=end

MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24

def time_of_day(num)
  if num < 0
    minutes = MINUTES_IN_HOUR - (num.abs % MINUTES_IN_HOUR)
    hours = HOURS_IN_DAY - (num.abs / MINUTES_IN_HOUR % HOURS_IN_DAY + 1)
  else
    minutes = num % MINUTES_IN_HOUR
    hours = num / MINUTES_IN_HOUR % HOURS_IN_DAY
  end
  "%02d:%02d" % [hours, minutes]
end

p time_of_day(0) #== "00:00" # tests edge case to make sure 0 integer returns midnight
p time_of_day(1440) #== '00:00' # 24 hours later should also return midnight
p time_of_day(-3) #== "23:57" # does the negative integer properly subtract to get to previous hour? i.e. does 23 come before 0?
p time_of_day(35) #== "00:35" 
p time_of_day(-1437) #== "00:03" # how does the method deal with large integers that span days?
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"
