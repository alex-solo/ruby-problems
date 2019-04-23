=begin
- input: an odd number
- output: n number rows of stars

- model the problem:
  - given n, puts n rows (ex. 9)
    - 1, 3, 5, 7, 9, 7, 5, 3, 1 stars
    - prepend spaces:
      - 4, 3, 2, 1, 0, 1, 2, 3, 4

diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
    
=end

def diamond(num)
  stars = []
  spaces = []
  
  (1..(num - 2)).each do |i|
    stars << i if i.odd?
    spaces << i if i <= (num - 1) / 2
  end
  stars = stars + [num] + stars.reverse
  spaces = spaces.reverse + [0] + spaces

  spaces.zip(stars).each do |space, star|
    puts ' ' * space + '*' * star
  end
end

diamond(7)