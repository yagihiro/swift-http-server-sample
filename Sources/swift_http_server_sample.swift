import HTTP
import HTTPMiddleware

struct Middleware: HTTPRequestMiddlewareType {
    func respond(request: HTTPRequest) -> HTTPRequestMiddlewareResult {
        // You can change the request and pass it forward
        return .Next(request)

        // Or you can respond early and bypass the chain
        return .Respond(HTTPResponse(statusCode: 404, reasonPhrase: "Not Found"))
    }
}

struct Responder: HTTPResponderType {
    func respond(request: HTTPRequest) -> HTTPResponse {
        // May or may not be called depending on the middleware
        return HTTPResponse(statusCode: 200, reasonPhrase: "OK")
    }
}

let request = HTTPRequest(method: .GET, uri: URI(path: "/"))
let chain = Middleware() >>> Responder()
let response = chain.respond(request)
