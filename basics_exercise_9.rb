words = "the flintstones rock"
word_array = words.split(/ /)

word_array.each do |word|
  word.capitalize!
end

p word_array.join(' ')