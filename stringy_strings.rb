def stringy(num)
  string = ''
  for i in (1..num)
    i.odd? ? string << '1' : string << '0'
  end
  string
end

def convert(num)
  arr = []
  num.times do |idx|
    number = idx.even? ? 1 : 0
    arr << number
  end
  arr.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts '-------------------------------'
puts convert(6) == '101010'
puts convert(9) == '101010101'
puts convert(4) == '1010'
puts convert(7) == '1010101'

# Further Exploration

def stringy_string(num, start_on = 0)
  arr = []
  num.times do |idx|
    if start_on == 1 
      number = idx.even? ? 1 : 0
    elsif start_on == 0
      number = idx.even? ? 0 : 1
    else
      number = 'x'
    end
    arr << number
  end
  arr.join
end

puts '-------------------------------'
puts stringy_string(6)
puts stringy_string(9) 
puts stringy_string(4) 
puts stringy_string(7)

# One line solution from LS student

def stringy2(num, start = 1)
  Array.new(num) {|idx| idx.even? ? start : (start-1).abs}.join
end

puts '-------------------------------'
puts stringy2(6)
puts stringy2(9) 
puts stringy2(4) 
puts stringy2(7)