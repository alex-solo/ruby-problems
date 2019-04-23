# compare two strings that are provided as input
#   - rules:
#     - if char at same index is a different char, add one to the counter

# find shorter string:
#   length = str1.length > str2.length ? str2 : str1
# or no need? 
#   - iterate and break if arr[idx] is nil?
  
# iterate through the shorter string (or array of chars) and compare to char in other array at same index

# # GAGCCTACTAACGGGAT
# # CATCGTAATGACGGCCT
# # ^ ^ ^  ^ ^    ^^

class DNA
  attr_reader :strand

  def initialize(strand)
    @strand = strand.chars
  end

  def hamming_distance(strand2)
    counter = 0
    strand.each_index do |idx|
      break if strand[idx].nil? || strand2[idx].nil?
      counter += 1 if strand[idx] != strand2[idx]
    end
    counter
  end
end
