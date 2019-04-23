flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index do |name| 
  !!/Be/.match(name)
end

# or

flintstones.index {|name| name[0, 2] == "Be"}
