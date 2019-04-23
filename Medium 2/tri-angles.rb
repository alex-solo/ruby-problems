=begin
  - input: 3 numbers
  - output: symbol representing the kind of triangle or invalid
  
  - Data Structure: Arrayy to hold the 3 nums
  
Algorithm:
  - sort array
  - if sum of all sides != 180 || arr.include?(0) return invalid
  - if arr.last == 90 then return right
  - if arr.last > 90 then return obtuse
  - else acute
=end

def triangle(side1, side2, side3)
  arr = [side1, side2, side3].sort
  return :invalid if arr.inject(:+) != 180 || arr.include?(0)
  case arr.last
  when 90 then :right
  when 90..180 then :obtuse
  else :acute
  end
end

p triangle(60, 70, 50) #== :acute
p triangle(30, 90, 60) #== :right
p triangle(120, 50, 10) #== :obtuse
p triangle(0, 90, 90) #== :invalid
p triangle(50, 50, 50) #== :invalid
