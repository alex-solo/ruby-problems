def sequence(count, num)
  multiply_by = 1
  arr = []
  count.times do
    arr << multiply_by * num
    multiply_by += 1
  end
  arr
end

p sequence(5, 1) #== [1, 2, 3, 4, 5]
p sequence(4, -7) #== [-7, -14, -21, -28]
p sequence(3, 0) #== [0, 0, 0]
p sequence(0, 1000000) #== []
p '-------------'


def sequence2(count, num)
  factor = 0
  result = Array.new(count).map do |int|
    factor += 1
    num * factor
  end
  result
end

p sequence2(5, 1) #== [1, 2, 3, 4, 5]
p sequence2(4, -7) #== [-7, -14, -21, -28]
p sequence2(3, 0) #== [0, 0, 0]
p sequence2(0, 1000000) #== []
p '-------------'

def sequence3(count, num)
  Array.new(count, 0).map.with_index {|_, idx| num + (num * idx) }
end

p sequence3(5, 1) #== [1, 2, 3, 4, 5]
p sequence3(4, -7) #== [-7, -14, -21, -28]
p sequence3(3, 0) #== [0, 0, 0]
p sequence3(0, 1000000) #== []
p '-------------'

def sequence4(count, num)
  (1..count).map {|idx| num * idx}
end

p sequence4(5, 1) #== [1, 2, 3, 4, 5]
p sequence4(4, -7) #== [-7, -14, -21, -28]
p sequence4(3, 0) #== [0, 0, 0]
p sequence4(0, 1000000) #== []
p '-------------'