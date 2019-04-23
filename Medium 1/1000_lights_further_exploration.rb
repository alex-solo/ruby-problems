def initialize_hash(num)
  hash = Hash.new
  1.upto(num) { |i| hash[i] = 'off' }
  hash
end

def toggle(hash)
  1.upto(hash.size) do |round|
    hash.each do |position, value|
      if position % round == 0
        value == 'off' ? hash[position] = 'on' : hash[position] = 'off'
      end
    end
  end
  hash
end

def lights_on(hash)
  results = hash.select do |position, value|
    value == 'on'
  end
  results.keys
end  
  
def display_result(hash)
  on, off = hash.partition do |k, v|
    v == 'on'
  end
  
  str_on = on.map { |el| el[0] }.flatten
  str_off = off.map { |el| el[0] }.flatten
  
  puts "Lights #{joinor(str_on)} are now on. Lights #{joinor(str_off)} are off."
end

def joinor(array)
  if array.size == 2
    "#{array[0]} and #{array[1]}"
  elsif array.size == 1
    "#{array[0]}"
  else
    array[-1] = "and #{array[-1]}"
    array.join(', ')
  end
end

lights = initialize_hash(25)
toggle(lights)

p lights_on(lights)

display_result(lights)
