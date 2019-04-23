statement = "The Flintstones Rock"

# split statement to array
# iterate through array while building the hash (add 1 for every occurence)

letter_freq = Hash.new(0)

letters = statement.split(%r{\s*})
letters.each { |char| letter_freq[char] += 1 }

p letter_freq

words = "the flintstones rock"

title = words.split.map { |word| word.capitalize }.join(" ")

p title