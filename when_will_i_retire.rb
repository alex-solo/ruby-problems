def prompt(message)
  puts "=> #{message}"
end

prompt("How old are you now?")
age = gets.chomp

prompt("At what age would you like to retire?")
retire_age = gets.chomp
current_year = Time.new.year

retirement_year = current_year + (retire_age.to_i - age.to_i)

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{retire_age.to_i - age.to_i} years left of work."