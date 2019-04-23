

Dir.chdir('/home/ubuntu//my_pictures')

pic_names = Dir['/home/ubuntu//tmp/pics/*.JPG']

batch_name = 'mumiy_troll'

print "Downloading #{pic_names.length} files: "
pic_number = 1

pic_names.each do |name|
    print '.'
    
    new_name = if pic_number < 10
        "#{batch_name}0#{pic_number}.jpg"
    else
        "#{batch_name}#{pic_number}.jpg"
    end
    
    if File.exist?(new_name) 
        puts 'FILE EXISTIS, ABORT MISSION'
        exit
    else
        File.rename(name, new_name)
        pic_number += 1
    end

pic_number += 1

end

puts
puts "DONE"