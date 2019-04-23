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
  
lights = initialize_hash(1000)
toggle(lights)

p lights_on(lights)
