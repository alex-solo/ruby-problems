class Die
    
   def initialize
       @number_showing = 4
   end
   
   def cheat
       puts "What side do you want?"
       input = gets.chomp.to_i
       if input > 6
           puts "Error"
       else
       @number_showing = input
       end
   end
   
   def roll
       @number_showing = 1 + rand(6)
   end
   
   def showing
       @number_showing
   end
   

end

die = Die.new

puts die.cheat
