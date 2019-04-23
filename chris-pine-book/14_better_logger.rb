$nesting_depth = 0

def log string_description, &block
   prefix = '  ' * $nesting_depth
   puts prefix + "Starting #{string_description}..."
   $nesting_depth = $nesting_depth + 1
   result = block.call
   $nesting_depth = $nesting_depth - 1
   puts prefix + "Finished #{string_description} block with result:"
   puts prefix + result.to_s
end


log "outer block" do
   log "inner block" do
      log "tiny block" do
   
         arr = [1, 5, 4, 89, 34]
         arr.reverse
      end
   "farting".reverse
   end
      log "mathy" do
         1*3 - 45+5
      end
   false == (4*5 != 20)
end
   
