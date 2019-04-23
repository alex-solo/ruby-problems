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

CHAR_LIMIT = 80

def truncate(string)
  char_limit = CHAR_LIMIT
  
  rest = string
  loop do
    if string.length <= char_limit
      puts "| #{string}#{' ' * (char_limit - string.length)} |"
      break
    end
    rest = string.slice!(char_limit..string.length)
    puts "| #{string} |"
    string = rest
  end
end

def print_in_box(string)
  char_limit = CHAR_LIMIT
  
  if string.length < char_limit
    n = string.length
    top_bottom = "+#{("-" * (n+2))}+"
    empty = "|#{(" " * (n+2))}|"
    middle = "| #{string} |"

    puts [top_bottom, empty, middle, empty, top_bottom]
  else
    top_bottom = "+#{("-" * (char_limit + 2))}+"
    empty = "|#{(" " * (char_limit + 2))}|"
    
    puts [top_bottom, empty]
    truncate(string)
    puts [empty, top_bottom]
  end
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box("Hello and Welcome!")

text = "Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32."

print_in_box(text)
print_in_box('Hi there')
print_in_box('Hey hey hey what is up')
