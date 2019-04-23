# question 1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

puts ages.has_key?('Spot')
puts ages.key?('Spot')
puts ages.member?('Spot')
puts ages.include?('Spot')
puts !!ages['Spot']

# question 2

munsters_description = "The Munsters are creepy in a good way."

puts munsters_description.gsub!('M', 'm')     # "The munsters are creepy in a good way."
puts munsters_description.capitalize          # "The munsters are creepy in a good way."
puts munsters_description.swapcase            # "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
puts munsters_description.downcase            # "the munsters are creepy in a good way."
puts munsters_description.upcase              # "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

# question 3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

p ages.merge!(additional_ages)

# question 4

advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.include?('Dino')
puts !!advice.match('Dino')

# question 5

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

p flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# question 6

p flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles) << "Dino"

# question 7

p flintstones << 'Agnes' << 'Hoppy'
p flintstones.concat(['Alex', 'John'])

# question 8

advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice!(0..38)
p advice

# or
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice!("Few things in life are as important as ")
p advice

# or
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice!(0, advice.index('house'))
p advice

# question 9

statement = "The Flintstones Rock!"

puts statement.chars.count('t')

# or

puts statement.scan('t').count


# question 10

title = "Flintstone Family Members"
puts title.center(40)
