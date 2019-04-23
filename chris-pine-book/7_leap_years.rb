puts "Enter starting year"
start_year = gets.chomp.to_i

puts "Enter ending year"
ending_year = gets.chomp.to_i

year = start_year

while year <= ending_year
  if year % 4 == 0
    if (year % 400 == 0) || (year % 100 != 0)
      puts year
    end
  end
  
  year += 1
  
end  
    


