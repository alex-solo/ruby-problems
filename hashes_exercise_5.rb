

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

person.has_value?("Bob")

person.each do
    if person.has_value?("Bob")
        puts "YES"
    else
        puts "NO"
    end
end
