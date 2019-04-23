def method
  var = "fox"
  id = var.object_id

  puts "var is #{var} with id of #{id}"

  fun(var, id)
end

def fun(var, id)
  id_here = var.object_id
  puts "the id is #{id_here} inside the fun method"

  var = "bear"
  puts "var inside after reassignment is #{var} with id of #{id}"
  puts "var's object_id SHOULD BE #{var.object_id}"

  var_here = var
  var_here_id = var_here.object_id

  puts "var_here is #{var_here} with id here of #{var_here_id} and outside is #{id}"
end

method