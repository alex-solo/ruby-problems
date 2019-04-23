def is_an_ip_number?(num)
  [10, 4, 5, 11, 34, 45, 66].include?(num)
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4
  compared_array = dot_separated_words.select {|element| is_an_ip_number?(element.to_i)}
  compared_array == dot_separated_words
end

puts dot_separated_ip_address?("10.4.5.11.10") # false
puts dot_separated_ip_address?("10.34.11.66") # true
puts dot_separated_ip_address?("10.11.5") # false
puts dot_separated_ip_address?("45.5.11.10")  # true

