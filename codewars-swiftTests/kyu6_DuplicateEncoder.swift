import Foundation
import XCTest

class kyu6_DuplicateEncoder: XCTestCase {
	
	func duplicateEncode(_ word: String) -> String {
		word.lowercased().map {
			word.lowercased().components(separatedBy: String($0)).count > 2 ? ")" : "("
		}.joined()
	}
	
	func testBasics() {
		XCTAssertEqual(duplicateEncode("din"), "(((")
		XCTAssertEqual(duplicateEncode("recede"), "()()()")
		XCTAssertEqual(duplicateEncode("Success"), ")())())", "should ignore case")
		XCTAssertEqual(duplicateEncode("(( @"), "))((")
	}
}