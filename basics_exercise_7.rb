statement = "The Flintstones Rock"

char_array = statement.split(%r{\s*})

char_array.each_with_object({}) do |char, hash|
  hash[char] = char_array.count(char)
end
