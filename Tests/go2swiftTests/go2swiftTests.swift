import XCTest
@testable import go2swift

final class GoSwiftTests: XCTestCase {
    func testComputeHello() {
        let testName = "World"
        testName.withCString { cString in
            let resultPtr = computeHello(namePtr: cString)
            XCTAssertNotNil(resultPtr, "result pointer is nil")
            let result = String(cString: resultPtr!)
            XCTAssertEqual(result, "Hello World!")
            free(UnsafeMutablePointer(mutating: resultPtr))
        }
    }
}
