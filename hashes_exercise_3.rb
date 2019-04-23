

marks = {"Jane" => 98, "Sean" => 78, "Suzy" => 56}

marks.each_key {|k| puts k } # prints just the key

marks.each_value {|v| puts v } # prints just the value

marks.each {|k, v| puts k, v } # prints both