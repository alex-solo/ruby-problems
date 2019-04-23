arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |el|
  el.sort { |a, b| b <=> a }
end