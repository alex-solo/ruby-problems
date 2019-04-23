puts "Please type a word or sentence:"
input = gets.chomp

arr = input.split(' ')

counter = 0
arr.each { |word| counter += word.length }
  
puts "There are #{counter} characters in \"#{input}\""