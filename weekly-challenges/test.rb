class Atbash
  def self.encode(string)
    new_str = string.downcase.gsub(/[^a-z0-9]/, '')
    chunks = new_str.scan(/.{1,5}/)
    chunks
  end
end

p Atbash.encode('mindblowingly')