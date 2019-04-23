munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  new_hash = {}
  demo_hash.values.each do |family_member|
    new_hash["age"] = family_member["age"] + 42
    new_hash["gender"] = "other"
  end
  new_hash
end

p mess_with_demographics(munsters)
#p munsters  
