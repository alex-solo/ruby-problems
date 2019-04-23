require "socket"

def parse_request(request_line)
  http_method, path_and_params, version = request_line.split(" ")
  path, params = path_and_params.split("?")
  params = params.split("&").each_with_object({}) do |pair, hash|
    key, vlaue = pair.split("=")
    hash[key] = vlaue
  end
  [http_method, path, params]
end

server = TCPServer.new("localhost", 3003) # port number to determine which port we are using to connect to a server
loop do
  client = server.accept
  client.puts "HTTP/1.1 200 OK"
  client.puts "Content-Type: text/html\r\n\r\n" # browser sees and knows that everyting in response body it can interpret as html code and display visually to user
  request_line = client.gets
  next if !request_line || request_line =~ /favicon/
  puts request_line
  
  http_method, path, params = parse_request(request_line)

  client.puts
  client.puts "<html>"
  client.puts "<body>"
  client.puts "<pre>"
  client.puts http_method
  client.puts path
  client.puts params
  client.puts "</pre>"

  client.puts "<h1>Rolls!</h1>"

  rolls = params["rolls"].to_i
  sides = params["sides"].to_i

  rolls.times do
    roll = rand(sides) + 1
    client.puts "<p>", roll, "</p>"
  end

  client.puts "</body>"
  client.puts "</html>"

  client.close
end
