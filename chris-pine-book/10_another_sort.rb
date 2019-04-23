
def sort(arr)
  sorted = []
  unsorted = arr
  
  until unsorted.empty?
    smallest = arr[0]
    idx_smallest = 0

    1.upto(unsorted.size - 1) do |index| # more rubyish: each_with_index
      if unsorted[index] < smallest
        smallest = unsorted[index]
        idx_smallest = index
      end
    end
    
    sorted << smallest
    unsorted.delete_at(idx_smallest)
  end
  p sorted
 
end
  
fruit = ['orange', 'apple', 'cherry', 'banana', 'pineapple']
  
sort(fruit)
    