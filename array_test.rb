HEX_VALUES = ('a'..'f').to_a + (0..9).to_a

def generate_uuid
  string = 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'
  string_array = string.split('-')
  
  string_array.map! do |sub_string|
    sub_string.split('').each {|char| char.replace("#{HEX_VALUES.sample}")}.join
  end
  p string_array.join('-')
end
    
generate_uuid
