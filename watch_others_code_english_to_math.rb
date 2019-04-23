NUMBERS = {
    'zero' => 0,
    'one' => 1,
    'two' => 2,
    'three' => 3,
    'four' => 4,
    'five' => 5,
    'six' => 6,
    'seven' => 7,
    'eight' => 8,
    'nine' => 9
  }

def computer(string)
  arr = string.split(' ')
  converted = arr.each_index.map { |idx| idx.even? ? NUMBERS[arr[idx]] : arr[idx]}

loop do
    first_three = converted.shift(3)

    first_num = first_three[0]
    second_num = first_three[2]
    operator = first_three[1]
    
    solution = case operator
             when 'plus'
              first_num + second_num
             when 'minus'
              first_num - second_num
             end

    converted.unshift(solution)
    break if converted.size == 1
  end
    converted.pop
end

p computer("three plus eight")
p computer("one plus three plus nine plus eight minus four minus one plus six minus nine")
