import Curassow
import Inquiline

server { request in
  return Response(.Ok, contentType: "text/plain", body: "Hello World")
}
