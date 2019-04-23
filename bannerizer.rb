=begin

Write a method that will take a short line of text, and print it within a box.

Understand the problem:
- input: a string
- output: prints to the screen

- model the problem:
  - given a string of length n
  - output 5 strings
    - each string is n length
      -top and bottom: "+-" plus n times '-' plus "-+"
      -2nd and 4th: "| " plus n times " " plus " |"
      -middle: "| " plus string plus " |"
Data Structure:
- will work with string directly
  
Algorithm:
- modeled above

=end

def print_in_box(string)
  n = string.length
  top_bottom = "+#{("-" * (n+2))}+"
  empty = "|#{(" " * (n+2))}|"
  middle = "| #{string} |"
  
  puts top_bottom
  puts empty
  puts middle
  puts empty
  puts top_bottom
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box("Hello and Welcome!")
