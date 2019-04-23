def average(array)
  total = 0
  array.each do |num|
    total += num
  end
  
  str = array.map(&:to_s).join
  if str =~ /-/
    "ERROR. Array contains a negative number"
  else
    total/array.size rescue "Array is empty"
  end
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
puts average([])

# LS solution below:

def average2(array)
  sum = array.inject {|sum, number| sum + number}
  sum/array.size
end

puts "------------------------------"
puts average2([1, 5, 87, 45, 8, 8]) == 25
puts average2([9, 47, 23, 95, 16, 52]) == 40

def average3(array)
  sum = array.inject {|sum, number| sum + number}
  average = sum.to_f/array.size
  average.round(2)
end

puts "------------------------------"
puts average3([1, 5, 87, 45, 8, 8])
puts average3([9, 37, 22, 95, 16, 51])

def average4(array)
  sum = array.inject(:+)
  sum/array.size
end

puts "------------------------------"
puts average4([3, 1, 99, 45, 8, 8])
puts average4([9, 37, 22, 195, 16, 15])
