puts "Enter starting year"
start_year = gets.to_i

puts "Enter ending year"
ending_year = gets.to_i

start_year.upto(ending_year) do |year|
  next if year % 4 != 0
  next if (year % 100 == 0) && (year % 400 != 0)
  puts year
end