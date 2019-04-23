

def dictionary_sort some_array
    recursive_sort some_array, []
end

def recursive_sort unsorted, sorted

    return sorted if unsorted.empty?
    
    smallest = unsorted.pop
    new_unsorted = []

    unsorted.each do |word|
        if word.downcase < smallest.downcase 
            new_unsorted << smallest
            smallest = word
        else
            new_unsorted << word
        end
    end    
       sorted << smallest
       
       
       recursive_sort new_unsorted, sorted
        

end

p dictionary_sort(['Toronto', 'pencil', 'albatros', 'Calgary', 'Edmonton', 'coffee'])
p dictionary_sort(['toronto', 'pencil', 'albatros', 'calgary', 'edmonton', 'coffee'])