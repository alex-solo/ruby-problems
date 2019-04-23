

def sort some_array
    recursive_sort some_array, []
end

def recursive_sort unsorted, sorted
   
       return sorted if unsorted.empty?
   
   
   smallest = unsorted.pop
   still_unsorted = []

    unsorted.each do |word|
        if word < smallest
            still_unsorted << smallest
            smallest = word
        else
            still_unsorted << word
        end
    end
    
    sorted << smallest

    recursive_sort still_unsorted, sorted
end
    
p sort(['orange', 'apple', 'cherry', 'banana', 'pineapple'])
p sort([34, 2, 12, 3, 6, 3, 6, 34, 7])

# [34, 12, 2, 3, 6, 3, 6, 34] min = 7
# [12, 2, 3, 6, 3, 6, 34] min = 7       still_unsorted = [34]
# [2, 3, 6, 3, 6, 34] min = 7           still_unsorted = [34, 12]
# [3, 6, 3, 6, 34] min = 2              still unsorted = [34, 12, 7]
# [6, 3, 6, 34] min = 2                 still unsorted = [34, 12, 7, 3]
# [3, 6, 34] min = 2                    still unsorted = [34, 12, 7, 3, 6]
# [6, 34] min = 2                       still unsorted = [34, 12, 7, 3, 6, 3]
# [34] min = 2                          still unsorted = [34, 12, 7, 3, 6, 3, 6]
# sorted = [2]                          still unsorted = [34, 12, 7, 3, 6, 3, 6, 34]