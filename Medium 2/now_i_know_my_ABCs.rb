=begin
BLOCKS = {['B', 'O'] => true, ['X', 'K'] => true, ['D', 'Q'] => true, ['C', 'P'] => true, ['N', 'A'] => true, 
          ['G', 'T'] => true, ['R', 'E'] => true, ['F', 'S'] => true, ['J', 'W'] => true, ['H', 'U'] => true, 
          ['V', 'I'] => true, ['L', 'Y'] => true, ['Z', 'M'] => true}

- above are available pairs we start with
- available_blocks = BLOCKS
- iterate through each letter in string that is supplied as an argument
  - check if it's available block
   - available_blocks.select { |pair| pair.size == 2 }.flatten.include?(letter)
=end

BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], 
          ['C', 'P'], ['N', 'A'], ['G', 'T'], 
          ['R', 'E'], ['F', 'S'], ['J', 'W'], 
          ['H', 'U'], ['V', 'I'], ['L', 'Y'], 
          ['Z', 'M']]
          
def initialize(blocks)
  hash = {}
  blocks.each do |pair|
    hash[pair] = true
  end
  hash
end

def block_word?(string)
  blocks = initialize(BLOCKS)
  avail = blocks.select { |k, v| v == true }
  result = ''
  string.upcase.chars do |char|
    pair = blocks.select { |k, v| k.include?(char) }.keys[0]
    if blocks[pair] == true
      result << char
      blocks[pair] = false
    end
  end
  result == string.upcase
end

p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true
