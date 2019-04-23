def swap_name(string)
  arr = string.split
  f_name = arr[0]
  l_name = arr[1]
  "#{l_name}, #{f_name}"
end

p swap_name('Joe Roberts') #== 'Roberts, Joe'

def swap_name2(string)
  string.split.reverse.join(', ')
end

p swap_name2('Joe Roberts') #== 'Roberts, Joe'
