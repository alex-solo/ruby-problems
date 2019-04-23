

born = Time.local(1987, 11, 8, 5, 45, 34)
billion = born + 1_000_000_000
diff = billion - Time.new

days = diff/60/60/24
years = days/30/12

puts "You will be 1 billion seconds old in #{days} days!"
puts "You will be 1 billion seconds old in #{years} years!"


