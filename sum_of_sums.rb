def sum_of_sums(array)
  total = 0
  count = 1
  
  loop do
    total += array.take(count).inject(:+)
    count += 1
    break if count > array.size
  end
  total
end

p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) #== 4
p sum_of_sums([1, 2, 3, 4, 5]) #== 35
p '---'

def sum_of_sums2(array)
  total = 0
  1.upto(array.size) do |count|
    total += array.take(count).inject(:+)
  end
  total
end

p sum_of_sums2([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums2([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums2([4]) #== 4
p sum_of_sums2([1, 2, 3, 4, 5]) #== 35
p '---'

def sum_of_sums3(array)
  total = 0
  array.each_index do |idx|
    total = total + array[0..idx].inject(:+)
  end
  total
end

p sum_of_sums3([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums3([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums3([4]) #== 4
p sum_of_sums3([1, 2, 3, 4, 5]) #== 35
