
def count_occurences(vehicles)

hash = {}

vehicles.each do |type|
  if !hash.include?(type)
    hash[type] = [type]
  else
    hash[type] << type
  end
end

types = vehicles.uniq

types.each do |el|
  count = hash[el].length
  puts "#{el} => #{count}"
end

end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurences(vehicles)