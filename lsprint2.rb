input = nil
number_of_lines = nil

loop do
    
  puts '>> How many output lines do you want? Enter a number >= 3 (q to quit):'
  number_of_lines = gets.chomp.downcase
 
 break if number_of_lines == 'q'
  
  input = number_of_lines.to_i
  
  if input >= 3
      while input > 0
        puts 'Launch School is the best!'
        input -= 1
        end
    else puts ">> That's not enough lines."
    end
end


