def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  dot_separated_words.all? {|num| is_an_ip_number?(num)} && 
    dot_separated_words.size == 4
end

def is_an_ip_number?(word)
  word.to_i.to_s == word 
end

p dot_separated_ip_address?("4.5.5")
p dot_separated_ip_address?("1.2.3.4.5")
p dot_separated_ip_address?("10.4.5.11")