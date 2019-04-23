
    
    def bubble_sort(array)
    n = array.length
    
    loop do
      swapped = false
      
      (n-1).times do |i| #0, 1, 2, 3, 4
        if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]
          swapped = true
        end
      end
    
    break if swapped == false
    
    end
    
    array
    
    end
      
    p bubble_sort(['orange', 'apple', 'cherry', 'banana', 'pineapple'])

      
      
    