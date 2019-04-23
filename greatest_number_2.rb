=begin
START

# Given a collection of integers called "numbers"

SET iterator = 1
SET saved_number = value within numbers collection at space 1

WHILE iterator < length of numbers
  SET current_number = value within numbers collection at space "iterator"
  IF saved_number >= current_number
    go to the next iteration
  ELSE
    saved_number = current_number

  iterator = iterator + 1

PRINT saved_number

END
=end

arr = [1, 432, 76, 33, 12]
iterator = 1
saved_number = arr[0]

while iterator < arr.length
  current_number = arr[iterator]
    if saved_number >= current_number
      iterator += 1
    else
      saved_number = current_number
      iterator += 1
    end
end

p saved_number