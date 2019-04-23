
string = ''

while true
  puts "Say something to Grandma"
  string = gets.chomp
  break if string == "BYE"

  if string == string.upcase
    year = rand(1930..1950)
    puts "NO NOT SINCE #{year}"
  else
    puts "HUH WHAAT?"
  end
end

