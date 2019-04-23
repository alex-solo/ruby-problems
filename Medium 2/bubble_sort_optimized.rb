=begin
  - input: array of elements that can be sorted
  - output: same array with elements sorted
  
  - Data Structure: work directly with Array 
  
  Algorithm:
    - if first element > second element then array[0], array[1] = array[1], array[0]
    - now second element compared to third => if array[1] > array[2] then swap
=end

def bubble_sort!(array)
  n = array.size
  loop do
    newn = 0
    1.upto(n - 1) do |idx|
      if array[idx - 1] > array[idx]
        array[idx - 1], array[idx] = array[idx], array[idx - 1]
        newn = idx
      end
    end
  n = newn
  break if n == 0  
  end
  array
end

#array = [5, 3]
#bubble_sort!(array)
#array == [3, 5]

p array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array #== [1, 2, 4, 6, 7]

p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array #== %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
