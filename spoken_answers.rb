=begin
+++++ attr_accessor methods or reach for instance variable directly?

- for example we need to access the name attribute of a person
- we need it in a specific format
- if we reach for @name, we would need to format it every time 
  - ex. @name = "John Smith"
  - ex. @name.split.reverse.join(', ')
- But if we use getter/setter methods we can do that once in the getter:
    def name
      # converts name format => Last, First
      @name.split.reverse.join(', ')
    end
    
+++++ Why do we need class methods?

  - when a method does not pertain to individual objects but to the class itself
    we can create a class method
  - objects contain states and when we have a method that does not deal with state
    then we can just call a class method
    
  - we can use a class method and a class variable to keep track of a class level
    detail that pertains only to the class and not to individual objects.
    
=end