=begin

1. a method that returns the sum of two integers

informal

- prompt the user to enter value for integers 1 and 2 they want to add and save them to variables
- add integers 1 and 2 and save answer in variable
- return answer

formal

START

GET integer1, integer2
  IF integer1, integer2 != integer1.to_i, integer2.to_i
    RETURN "ERROR"
  ELSE
    SET answer = integer1 + integer2
  END

PRINT answer
  
END

-------------------------------


2. a method that takes an array of strings, and returns a string that is all those strings concatenated together

informal

Given an array of words
Create an empty string 

Iterate over each element in array
  - append each word in array to the string 
  
After iterating through the array, return the string

formal

START

# Given an array "words"

SET string = ""

ITERATE over array
  SET string = string + element
  
PRINT string

END

-------------------------------

3. a method that takes an array of integers, and returns a new array with every other element

informal

Given an array of integers

Iterate over the array 
  - if index of element is odd, skip
  - if it's even, append to a new array 
  
Return new array

formal

START

# Given an array of integers

ITERATE over array
  IF idx is even 
    new_arr << element
    
PRINT new_arr

END

=end