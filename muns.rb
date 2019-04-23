munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  new_hash = {}
  demo_hash.each do |name, family_member|
    family_member["age"] = family_member["age"] + 42
    family_member["gender"] = "other"
  end
  new_hash
end

new_munsters = mess_with_demographics(munsters)

p new_munsters