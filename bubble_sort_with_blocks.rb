def bubble_sort!(array)
  loop do
    exchange = false
    1.upto(array.size - 1) do |idx|
      first = array[idx - 1]
      second = array[idx]
      if (block_given? ? yield(first, second) : first < second)
        next
      else
        array[idx - 1], array[idx] = array[idx], array[idx - 1]
        exchange = true
      end
    end
  break if exchange == false
  end
  array
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [5, 3, 7]
bubble_sort!(array) { |first, second| first >= second }
p array #== [7, 5, 3]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = [6, 12, 27, 22, 14]
bubble_sort!(array) { |first, second| (first % 7) <= (second % 7) }
p array == [14, 22, 12, 6, 27]

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array)
p array == %w(Kim Pete Tyler alice bonnie rachel sue)

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array) { |first, second| first.downcase <= second.downcase }
p array == %w(alice bonnie Kim Pete rachel sue Tyler)
