def prompt(message)
  puts "=> #{message}"
end

prompt('What is the bill amount? ($)')
bill = gets.chomp.to_f

prompt("What percentage would you like to tip?")
tip_percent = gets.chomp.to_f

tip_amount = bill * (tip_percent / 100)
total = (bill + tip_amount)

puts "Tip amount: $%.2f" % tip_amount
puts "Total bill: $%.2f" % total
puts '-----------------------'
puts "Tip amount: $#{sprintf('%0.2f', tip_amount)}"
puts "Total bill: $#{sprintf('%0.2f', total)}"
