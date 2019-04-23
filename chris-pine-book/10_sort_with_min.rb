

def sort(arr)
  sorted = []
  unsorted = arr.clone  

  until unsorted.empty?
    smallest = unsorted.min
    idx_smallest = unsorted.index(smallest)
    sorted << smallest
    unsorted.delete_at(idx_smallest)
  end
  
  p sorted
  
end

arr = [2, 5, 3, 2, 4]
sort(arr)