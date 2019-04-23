

def profile(block_description, &block)
   profiling_on = true
   if profiling_on
      start_time = Time.new
      block.call
      duration = Time.new - start_time
      puts "#{block_description}: #{duration} seconds"
   else
      block.call
   end
end




profile "shuffle" do

def shuffle(deck)
   len = deck.length

13.times do
   shuf = []
   l_idx = 0
   r_idx = len/2
   
   while shuf.length < len
      if shuf.length%2 == 0
         shuf << deck[r_idx]
         r_idx += 1
      else
         shuf << deck[l_idx]
         l_idx += 1
      end
   
   end
   
   deck = shuf
   
end  
p deck
end


deck = ['King', 'Jack', 'Queen', '2', '7', '9', 'Ace', '4', '8', '3', '5']

shuffle(deck)


end