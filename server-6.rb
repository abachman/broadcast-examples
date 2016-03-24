require 'socket'

u = UDPSocket.new(Socket::AF_INET6)
u.bind '::', 9900

puts 'listening...'
c = 0
while true
  c += 1
  puts "<IPv6 #{ c }> #{ u.recvfrom(10).inspect }"
end
