=begin
As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. 
If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.
Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.
You may not use ruby's Date and Time methods.

Understand the problem:

- input
  - string
- output
  - number of minutes
   - "+ve" if after midnight
   - "-ve" if before midnight
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

after_midnight:
- extract how many hours and minutes before/after, convert to integer
- if hours == 24 or 0, hours = 0
- total = hours*60 + minutes

before_midnight:
- extract hour and minutes values
- 1440 - total minutes

=end

def after_midnight(string)
 hour = string[0, 2].to_i
  minutes = string[-2, 2].to_i
  (hour * 60 + minutes) % 1440
end

def before_midnight(string)
 delta_mins = 1440 - after_midnight(string)
 delta_mins = 0 if delta_mins == 1440
 delta_mins
end

p after_midnight('00:00') #== 0
p before_midnight('00:00') #== 0
p after_midnight('12:34') #== 754
p before_midnight('12:34') #== 686
p after_midnight('24:00') #== 0
p before_midnight('24:00') #== 0
