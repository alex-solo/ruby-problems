munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

#a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.

# key is name
# value is hash (stats)
# add something to hash => stats["age_group"] = whatever

munsters.each do |name, stats|
  case stats["age"]
    when 0..17
      stats["age_group"] = "kid"
    when 18..64
      stats["age_group"] = "adult"
    else
      stats["age_group"] = "senior"
  end
end

p munsters



