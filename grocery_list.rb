=begin
- input: array of arrays
  - ['string', num]
- output: array of strings 

Algorithm:

- create empty array
- iterate through the array that is passed in as an argument
- sub_arr[1].times { new_arr << sub_arr[0] }
=end

def buy_fruit(arr)
  arr.each_with_object([]) do |sub_arr, new_arr|
    sub_arr[1].times { new_arr << sub_arr[0] }
  end
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
#  ["apples", "apples", "apples", "orange", "bananas","bananas"]
