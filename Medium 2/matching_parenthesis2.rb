def balanced?(string)
  test_str = string.delete('^()')
  return false if test_str[0] == ")" || test_str[-1] == "("
  return false if (test_str.count("(") != test_str.count(")"))
  true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
