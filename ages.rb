ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.inject(:+)

ages2 = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

young_hash = ages2.reject { |_, v| v > 100 }
p young_hash

ages3 = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages3.values.min