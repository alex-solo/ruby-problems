

def dong(&block)
   
   now_hour = Time.new.hour
   if now_hour > 12
      now_hour = now_hour - 12
   end
   if now_hour == 0
      now_hour = 12
   end
   now_hour.times do
      block.call
   end
   
   
end

dong do
   puts "DONG"
end