=begin
- input: integer
- output: 'integer' number of strings

- model the problem:
  - given integer 5
  - puts 1 '*' prepended by int - 1 spaces
  - puts 2 '*' prepended by int - 2 spaces
  - puts 3 '*' prepended by int - 3 spaces
  - do as above until num of stars == specified argument
  
Algorithm:

- num_stars = 1
- prefix = int - 1
- create a loop that outputs 'num_stars' stars prepended by 'prefix' spaces
- num_stars += 1, prefix -= 1
- break when num_stars == specified argument
=end

def triangle(num)
  num_stars = 1
  prefix = num - 1
  
  loop do
    break if num_stars > num
    puts ' ' * prefix + '*' * num_stars
    num_stars += 1
    prefix -= 1
  end
end

triangle(9)
triangle(20)
triangle(3)
triangle(2)
triangle(1)