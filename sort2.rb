arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

new = arr.map do |el|
  el.sort do |a, b|
    b <=> a
  end
end

p new

arr2 = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new =  arr2.map do |hsh|
  new_hash = {}
  hsh.each do |k, v|
    new_hash[k] = v + 1
  end
  new_hash
end

p new