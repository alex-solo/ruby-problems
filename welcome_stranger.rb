def greetings(arr, hsh)
  name = arr.join(' ')
  title = hsh[:title]
  occupation = hsh[:occupation]
  puts "=> Hello, #{name}! Nice to have a #{title} #{occupation} around."
end

array = ['John', 'Q', 'Doe']
hash = { title: 'Master', occupation: 'Plumber' }

greetings(array, hash)
#=> Hello, John Q Doe! Nice to have a Master Plumber around.
