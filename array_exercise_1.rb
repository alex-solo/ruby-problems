arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
# g = arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
# g = arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
# g = arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
# g = hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
# g = hsh2[:third].keys[0]