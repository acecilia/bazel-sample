import XCTest
import Library
import UIKit

class Tests: XCTestCase {
    func test() {
        let bundle = Bundle(url: Bundle(for: Tests.self).url(forResource: "LibraryTests", withExtension: "bundle")!)!
        print(bundle.bundlePath)

        let image = UIImage(named: "icon", in: bundle, compatibleWith: nil)
        print(image)

        XCTAssertNotNil(image)

        // XCTAssertEqual(libraryName, "Library")
        // For iPhone 8
        // XCTAssertEqual(UIScreen.main.bounds, CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0))
    }
}
