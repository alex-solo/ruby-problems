# question 3

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub! "important", 'urgent'

puts advice

# question 4

numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1)  # => 2  This method deletes the element with index == 1. numbers is now: [1, 3, 4, 5]

numbers = [1, 2, 3, 4, 5]
numbers.delete(1) # => 1  This method deletes all occurences of integer '1' in the collection. numbers is now: [2, 3, 4, 5]

# question 5

def in_range?(int)
  (10..100).to_a.include?(int)
end

num = 42
puts in_range?(num)

# or 
puts (10..100).cover?(42)

# question 6

famous_words = "seven years ago..."

quote = "Four score and " + famous_words
puts quote

# or
puts "Four score and".concat(32).concat(famous_words)

# or
puts famous_words.prepend('Four score and ')

# question 7

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

puts eval(how_deep)

=begin
1.times: number => add_eight(number)
2.times: add_eight(number) => add_eight(add_eight(number)
3.times: add_eight(add_eight(number) => add_eight(add_eight(add_eight(number))
4.times: add_eight(add_eight(add_eight(number)) => add_eight(add_eight(add_eight(add_eight(number)))
5.times: add_eight(add_eight(add_eight(add_eight(number))) => add_eight(add_eight(add_eight(add_eight(add_eight(number))))

After eval method is invoked result is 42
=end

# question 8

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!

p flintstones

# question 9

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

p flintstones.to_a[2]

# or
p flintstones.assoc('Barney')