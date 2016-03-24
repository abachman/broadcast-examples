require 'socket'

u = UDPSocket.new
u.setsockopt(Socket::SOL_SOCKET, Socket::SO_BROADCAST, true)

while true
  u.send 'ping', 0, '10.0.1.255', 9900
  print '.'
  sleep 2
end
