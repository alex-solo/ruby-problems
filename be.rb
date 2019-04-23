flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# iterate through array and return value if match

flintstones.each_with_index do |name, idx|
  puts idx if /Be/ =~ name
end

amended = flintstones.map { |name| name[0, 2] }
p amended