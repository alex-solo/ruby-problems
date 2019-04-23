

def music_shuffle(songs)
    
songs = songs.sort
length = songs.length

2.times do
    l_idx = 0
    r_idx = length/2
    shuf = []
    
    while shuf.length < length
        if shuf.length%2 == 0
            shuf << songs[r_idx]
            r_idx += 1
        else
            shuf << songs[l_idx]
            l_idx += 1
        end
    end
   
   songs = shuf 
end
    
arr = []    
cut = rand(length)
idx = 0

while idx < length
    arr << songs[(idx+cut)%length]
    idx += 1
end
    p arr
end

music = Dir['**/*.mp3']
puts music_shuffle(music)