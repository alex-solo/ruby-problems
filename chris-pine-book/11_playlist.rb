

Dir.chdir('/home/ubuntu//Music')
playlist = "my_playlist.m3u"

music = Dir['*.mp3']

shuffled = []

until music.empty?
    rand_idx = rand(music.size)
    new_arr = []
    
    music.each_index do |idx|
       if rand_idx == idx
            shuffled << music[idx]
        else
            new_arr << music[idx]
       end
    end

music = new_arr

end

File.open(playlist, "w") do |f|
    shuffled.each do |song|
        f.puts(song)
    end
end

file_read = File.readlines(playlist)

puts file_read
    
    