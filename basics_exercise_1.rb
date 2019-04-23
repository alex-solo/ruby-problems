flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

names_hash = {}
flintstones.each_with_index do |name, idx|
  names_hash[name] = idx
end

puts names_hash.inspect
