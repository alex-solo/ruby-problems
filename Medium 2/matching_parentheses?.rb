def balanced?(string)
  test_str = string.delete('^()')
  return true if test_str.empty?
  
  first_last = test_str[0] == "(" && test_str[-1] == ")"
  count_match = (test_str.count("(") == test_str.count(")"))
  
  first_last && count_match
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
