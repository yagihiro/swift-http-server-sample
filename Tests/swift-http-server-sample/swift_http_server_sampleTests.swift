import XCTest
@testable import swift_http_server_sample

class swift_http_server_sampleTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(swift_http_server_sample().text, "Hello, World!")
    }


    static var allTests : [(String, (swift_http_server_sampleTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
