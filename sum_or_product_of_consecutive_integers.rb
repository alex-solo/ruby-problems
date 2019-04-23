def prompt(message)
  puts "=> #{message}"
end

loop do
  input = 0
  until input > 0
    prompt("Please enter an ingeger greater than zero.")
    input = gets.chomp.to_i
  end
  
  range = (1..input).to_a
  
  operation = ''
  until ['s', 'p'].include?(operation)
    prompt("Enter 's' to compute the sum or 'p' to compute product")
    operation = gets.chomp
  end
  
  result = operation == 's' ? range.inject(:+) : range.inject(:*)
  puts "The #{operation == 's' ? 'sum' : 'product'} of integers between 1 and #{input} is #{result}"
  
  answer = ''
  loop do
    prompt("Would you like to calculate again? 'y' or 'n'?")
    answer = gets.chomp
    break if ['y', 'n'].include?(answer)
  end
  break if answer == 'n'
end

prompt("Thank you for using my simple calculator.")
