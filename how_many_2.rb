
def count_occurences(vehicles)

hash = {}

vehicles.each do |type|
  if !hash.include?(type)
    hash[type] = [type]
  else
    hash[type] << type
  end
end

hash.each do |k, v|
  puts "#{k} => #{v.count}"
end

end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurences(vehicles)