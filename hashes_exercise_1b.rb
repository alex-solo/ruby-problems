

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
          
          
arr = []
immediate_family = family.select { |k, v| k == :sisters || k == :brothers }

immediate_family.each do |k, v|
  arr << v
end

final_array = arr.flatten

p final_array

