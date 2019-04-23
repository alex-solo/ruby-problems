# 8-4-4-4-12 chars
# ("a".."f") + ("0".."9")

all_chars = ("a".."f").to_a + ("0".."9").to_a
sections = [8, 4, 4, 4, 12]
new = []

sections.each do |num|
  new << all_chars.sample(num).join
end

p new.join("-")