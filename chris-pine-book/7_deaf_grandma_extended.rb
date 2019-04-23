
string = ''
bye_count = 0

while true
  puts "Say something to Grandma"
  string = gets.chomp
  if string == "BYE"
    bye_count += 1
  else 
    bye_count = 0
  end
  break if bye_count >= 3
  
  response = if string != string.upcase
    "HUH WHAAT?"
  else
    "NO NOT SINCE #{rand(1930..1950)}!"
  end
  puts response
end
puts "OK fine, bye"