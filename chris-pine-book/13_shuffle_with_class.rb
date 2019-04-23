

=begin
-Empty "shuffled" array
-Randomly select an index of given array and push to "shuffled"
-Delete from orig. array
-Repeat until orig. array is empty
=end

class Array

def shuffle
   shuffled = []
   
until self.empty?
   idx = rand(0..(self.size-1)) #or rand(arr.size)
   shuffled << self[idx]
   self.delete_at(idx)
end
shuffled
end
end

array = [1, 2, 3, 4, 5, 6, 7]
p array.shuffle

p [45, 23, 4, 11, 9, 33].shuffle
