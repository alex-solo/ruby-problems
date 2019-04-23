=begin
-Empty "shuffled" array
-Randomly select an index of given array and push to "shuffled"
-Delete from orig. array
-Repeat until orig. array is empty
=end


def shuffle(arr)
   shuffled = []
   
until arr.empty?
   idx = rand(0..(arr.size-1)) #or rand(arr.size)
   shuffled << arr[idx]
   arr.delete_at(idx)
end
p shuffled
end

shuffle([1, 2, 3, 4, 5, 6, 7])