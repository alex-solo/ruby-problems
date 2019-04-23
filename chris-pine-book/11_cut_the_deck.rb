
def cut(deck)
    
len = deck.length


arr = []
cut = rand(len)
idx = 0

while idx < len
   arr << deck[(idx+cut)%len]
   idx += 1
end

p arr

end

deck = ['King', 'Jack', 'Queen', '2', '7', '9', 'Ace', '4', '8', '3', '5']

cut(deck)