import XCTest
import Library
import UIKit

class Tests: XCTestCase {
    func test() {
        XCTAssertEqual(libraryName, "Library")
        // For iPhone 8
        XCTAssertEqual(UIScreen.main.bounds, CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0))
    }
}
