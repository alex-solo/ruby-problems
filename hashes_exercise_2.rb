

a = {"Bob" => 'forward', "Paul" => 'guard', "Jamie" => 'goalie' }
b = {"Bob" => 'goalie', "James" => 'point', "Tucker" => 'defence' }

a.merge(b) {|key, oldval, newval| oldval}

a.merge!(b) # a becomes the new hash