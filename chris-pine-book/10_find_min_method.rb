=begin
In a given array compare the first value (arbitrarily selected as the smallest value) to each element in the array.
Reassign the "smallest" variable to the lowest variable and keep its index value. Repeat the process through the array
until the true smallest value is found.
=end

def min(arr)

smallest = arr[0]
idx_smallest = 0

    arr.each_index do |idx|
        if arr[idx] < smallest
            smallest = arr[idx]
            idx_smallest = idx
        end
    end

p arr[idx_smallest]

end

min([2, 6, 2, 3, 1])