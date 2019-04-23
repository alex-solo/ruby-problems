
words = []

while true
  string = gets.chomp
  break if string == ''
  words << string
end

puts words.sort

