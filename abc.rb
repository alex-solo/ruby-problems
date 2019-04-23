def bubble_sort!(array)
  loop do
    exchange = false
    1.upto(array.size - 1) do |idx|
      first = (array[idx - 1])
      second = (array[idx])
      if block_given?
        first = yield(array[idx - 1])
        second = yield(array[idx])
      end
      next if first <= second
      array[idx - 1], array[idx] = array[idx], array[idx - 1]
      exchange = true
    end
    break if exchange == false
  end
  array
end

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array) { |value| value.downcase }

p array #== %w(alice bonnie Kim Pete rachel sue Tyler)
