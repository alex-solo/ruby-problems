def count_occurences(array)

hash = Hash.new(0) # hash = {} doesn't work here

array.each do |el|
  hash[el] += 1
end

hash.each {|k, v| puts "#{k} => #{v}"}
end
vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurences(vehicles)
