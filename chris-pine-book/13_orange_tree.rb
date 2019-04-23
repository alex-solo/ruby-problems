

class OrangeTree
   
   def initialize
      @orange_count = 0 #no oranges for first 3 years. Years 4-6, 7 oranges, years 7-10, produces 10 oranges
      @height = 0
      @age = 0 #after 10 years the tree should die
   end
   
   def height
      puts "The tree is #{@height} cm tall."
   end
   
   def one_year_passes
      @orange_count = 0
      @age += 1
      @height += 5
      if @age <= 10
         if @age <= 3
            puts "No oranges were produced this year, the tree is too young"
         elsif @age >= 4 && @age <= 6
            @orange_count += 7
            puts "The tree produced #{@orange_count} oranges this year"
         elsif @age >= 7 && @age <= 10
            @orange_count += 10
            puts "The tree produced #{@orange_count} oranges this year"
         end
      else
         puts "The tree is more than 10 years old. It has grown old and died"
         exit
      end
      puts "The tree is #{@age} years old and is #{@height} cm tall."
   end
   
   def count_the_oranges
      puts "The tree has #{@orange_count} oranges."
   end
   
   def pick_an_orange
      if @orange_count == 0
         if @age < 4
            puts "The tree hasn't produced any oranges yet"
         else
         puts "You picked all the oranges"
         end
      else
         @orange_count -= 1
         puts "You picked one orange. You have #{@orange_count} oranges left to pick."
      end
   end
   
end

tree = OrangeTree.new 

puts tree.height
puts tree.one_year_passes
puts tree.pick_an_orange
puts tree.one_year_passes
puts tree.one_year_passes
puts tree.pick_an_orange
puts tree.one_year_passes
puts tree.one_year_passes
puts tree.one_year_passes
puts tree.one_year_passes
puts tree.height
puts tree.pick_an_orange
puts tree.pick_an_orange
puts tree.pick_an_orange
puts tree.pick_an_orange
puts tree.one_year_passes
puts tree.pick_an_orange
puts tree.count_the_oranges
puts tree.one_year_passes
puts tree.height
puts tree.pick_an_orange
puts tree.pick_an_orange
puts tree.count_the_oranges
puts tree.one_year_passes
puts tree.one_year_passes