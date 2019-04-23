=begin
  - input: 3 numbers
  - output: symbol representing the kind of triangle or invalid
  
  - Data Structure: Arrayy to hold the 3 nums
  
Algorithm:
  - [side1, side2, side3].sort
  - if (arr[0] + arr[1]) < arr[2] then invalid
  - if arr.uniq.size == 1 then equilateral
  - if arr.uniq.size == 2 then isosceles
  - if arr.uniq.size == 3 then scalene
=end

def triangle(side1, side2, side3)
  arr = [side1, side2, side3].sort
  return :invalid if (arr[0] + arr[1]) <= arr[2]
  case arr.uniq.size
  when 1 then :equilateral
  when 2 then :isosceles
  when 3 then :scalene
  end
end

p triangle(3, 3, 3) #== :equilateral
p triangle(3, 3, 1.5) #== :isosceles
p triangle(3, 4, 5) #== :scalene
p triangle(0, 3, 3) #== :invalid
p triangle(3, 1, 1) #== :invalid
