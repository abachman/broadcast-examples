require 'socket'

u = UDPSocket.new
u.bind '0.0.0.0', 9900

puts 'listening...'
c = 0
while true
  c += 1
  puts "<IPv4 #{ c }> #{ u.recvfrom(10).inspect }"
end
