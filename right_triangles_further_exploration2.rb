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

def output(orient, num_stars, space)
  if orient == 1 || orient == 3
    puts '*' * num_stars + ' ' * space
  elsif orient == 2 || orient == 4
    puts ' ' * space + '*' * num_stars
  end
end

def build_blocks(num, orient)
  if orient == 1 || orient == 2
    num_stars = 1
    space = num - 1
  elsif orient == 3 || orient == 4
    num_stars = num
    space = 0
  end
  return num_stars, space
end

def process(orient, num_stars, space, num)
  if orient == 1 || orient == 2
    loop do
      break if num_stars > num
      output(orient, num_stars, space)
      num_stars += 1
      space -= 1
    end
  elsif orient == 3 || orient == 4
    loop do
      break if num_stars < 1
      output(orient, num_stars, space)
      num_stars -= 1
      space += 1
    end
  end
end

def triangle(num, orient)
  num_stars, space = build_blocks(num, orient)
  process(orient, num_stars, space, num)
end

triangle(5, 1)
triangle(5, 3)
triangle(5, 2)
triangle(5, 4)
