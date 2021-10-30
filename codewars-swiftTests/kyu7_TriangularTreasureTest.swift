/*
Triangular numbers are so called because of the equilateral
 triangular shape that they occupy when laid out as dots. i.e.

1st (1)   2nd (3)    3rd (6)
    *          **        ***
    *         **
    *
    You need to return the nth triangular number.
     You should return 0 for out of range values:

For example: (Input --> Output)

0 --> 0
2 --> 3
3 --> 6
-10 --> 0
*/

import XCTest

class kyu7_TriangularTreasureTest: XCTestCase {
	
	func triangular(_ n: Int) -> Int {
		if n <= 0 { return 0 }
		var result = 0
		for i in (1 ... n) {
			result = result + i
		}
		return result
	}
	
	func testExample() throws {
		XCTAssertEqual(triangular(0), 0)
		XCTAssertEqual(triangular(-1), 0)
		XCTAssertEqual(triangular(1), 1)
		XCTAssertEqual(triangular(2), 3)
		XCTAssertEqual(triangular(3), 6)
	}
	
}
