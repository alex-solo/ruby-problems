# Solution from one of the LS students.
# uses the string instance method #scan. scan matches a given pattern and for every match populates an array with the match.

def print_in_box(string)
  lines = string.scan(/.{1,76}/)
  width = lines.first.to_s.size + 2
  top_bot = "+#{'-' * width}+"
  padding = "|#{' ' * width}|"
  text = lines.map { |line| "| #{line.ljust(width - 2)} |" }
  puts [top_bot, padding, text, padding, top_bot]
end

print_in_box('Hi there')
txt = "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
print_in_box(txt)
print_in_box("HELLO AND WELCOME")
