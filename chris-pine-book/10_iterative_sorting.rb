

def sort(arr)
   unsorted = arr.clone
   sorted = []

while unsorted.length > 0
   
   still_unsorted = []
   smallest = unsorted.pop

    unsorted.each do |word|
        if word < smallest
            still_unsorted << smallest
            smallest = word
        else
            still_unsorted << word
        end
    end
    
    sorted << smallest
    unsorted = still_unsorted
    
end
p sorted
p arr.sort == sorted
end
    

    
sort(['orange', 'apple', 'cherry', 'cherry', 'banana', 'pineapple'])
sort([34, 2, 12, 3, 6, 3, 6, 34, 7])

# [34, 12, 2, 3, 6, 3, 6, 34] min = 7
# [12, 2, 3, 6, 3, 6, 34] min = 7       still_unsorted = [34]
# [2, 3, 6, 3, 6, 34] min = 7           still_unsorted = [34, 12]
# [3, 6, 3, 6, 34] min = 2              still unsorted = [34, 12, 7]
# [6, 3, 6, 34] min = 2                 still unsorted = [34, 12, 7, 3]
# [3, 6, 34] min = 2                    still unsorted = [34, 12, 7, 3, 6]
# [6, 34] min = 2                       still unsorted = [34, 12, 7, 3, 6, 3]
# [34] min = 2                          still unsorted = [34, 12, 7, 3, 6, 3, 6]
# sorted = [2]                          still unsorted = [34, 12, 7, 3, 6, 3, 6, 34]