import Foundation

print("Hello, world")

do {
  let ip = try IP(port: 5555)
  let serverSocket = try TCPServerSocket(ip: ip)
  let clientSocket = try serverSocket.accept()

  let yo = try clientSocket.receiveString(untilDelimiter: "\n")
} catch {

}
