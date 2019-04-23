flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
#Turn this array into a hash where the names are the keys and the 
#values are the positions in the array.

# iterate over array (with object (hash)) 
# populate hash with each iteration hash[name] = flintstones.index(name)

result = flintstones.each_with_object({}) do |name, hash|
  hash[name] = flintstones.index(name)
end

p result

#or

flint_hash = {}
flintstones.each_with_index do |name, idx|
  flint_hash[name] = idx
end

p flint_hash