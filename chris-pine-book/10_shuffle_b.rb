=begin
-randomly select an index
-go through each item in array and put each element in new_arr 
except for the randomly chosen one which goes into shuffled array
=end


def shuffle(arr)
   shuffled = []
   
until arr.empty?
    rand_idx = rand(arr.size)
    new_arr = []
    
    arr.each_index do |idx|
       if rand_idx == idx
            shuffled << arr[idx]
        else
            new_arr << arr[idx]
       end
    end

arr = new_arr

end
p shuffled
end

shuffle([1, 2, 3, 4, 5, 6, 7])