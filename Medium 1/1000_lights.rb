=begin
You have a bank of switches before you numbered from 1 to 1000. 
Each switch is connected to exactly one light that is initially off. 
You walk down the row of switches, and turn every one of them on. 
Then, you go back to the beginning and toggle switches 2, 4, 6, and so on. 
Repeat this for switches 3, 6, 9, and so on, and keep going until you have been through 1000 repetitions of this process.

Write a program that determines which lights are on at the end.

Example with 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4.

With 10 lights, 3 lights are left on: lights 1, 4, and 9.

Understand the problem:
  - 5 switches [off, off, off, off, off]
  - round 1: toggle all => [on, on, on, on, on]
  - round 2: toggle 2, 4, 6... => [on, off, on, off, on]
  - round 3: toggle 3, 6, 9... => [on, off, off, off, on]
  - round 4: toggel 4, 8, 12... => [on, off, off, on, on]
  - round 5: toggle 5, 10, 15... => [on, off, off, on, off]
  
- create an array (1..1000) of all true values
- idx = 1, add 2 => 1, 3, 5 (represent indeces)
- idx = 2, add 3 => 2, 5, 8
- idx = 3, add 4 => 3, 7, 11
- ...
- break if counter > 1000
=end

arr = Array.new(1000, true)

start = 1
add = 2

loop do
 idx = start
  loop do
    arr[idx] = !arr[idx]
    idx += add
    break if idx > (arr.size - 1)
  end
  add += 1
  start += 1
  break if start == arr.size
end

new_arr = []
arr.each_index { |idx| new_arr << idx if arr[idx] }

on_lights = new_arr.map {|x| x + 1}

p on_lights # array of all lights that are on
p on_lights.size # how many lights are on?
