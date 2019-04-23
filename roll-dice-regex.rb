require "socket"

server = TCPServer.new("localhost", 3003) # port number to determine which port we are using to connect to a server

def get_params(string)
  arr = string.split(/[?&\s]/)

  params = arr.reject do |el|
    el == arr.last || [0, 1].include?(arr.index(el))
  end

  params.each_with_object({}) do |param, hash|
    hash[param.match(/\A\w+/).to_s] = param.match(/\d+\z/).to_s
  end
end

loop do
  client = server.accept
  client.puts "HTTP/1.1 200 OK"
  client.puts "Content-Type: text/plain\r\n\r\n"
  request_line = client.gets
  next if !request_line || request_line =~ /favicon/
  puts request_line

  http_method = request_line.match(/\A\w+/).to_s
  path = request_line.match(/\/.*\?/).to_s.delete("?")
  params = get_params(request_line)

  client.puts request_line

  client.puts http_method
  client.puts path
  client.puts params

  client.puts rand(6) + 1
  client.close
end
