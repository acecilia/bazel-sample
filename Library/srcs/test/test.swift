import XCTest
import Library
import UIKit

class Tests: XCTestCase {
    func testMainBundle() {
        let bundle = Bundle(url: Bundle(for: SomeClass.self).url(forResource: "Library", withExtension: "bundle")!)!
        print(bundle.bundlePath)

        let image = UIImage(named: "icon", in: bundle, compatibleWith: nil)
        print(image as Any)

        XCTAssertNotNil(image)
    }

    func testTestBundle() {
        let bundle = Bundle(url: Bundle(for: Tests.self).url(forResource: "LibraryTests", withExtension: "bundle")!)!
        print(bundle.bundlePath)

        let image = UIImage(named: "icon", in: bundle, compatibleWith: nil)
        print(image as Any)

        XCTAssertNotNil(image)
    }
}
