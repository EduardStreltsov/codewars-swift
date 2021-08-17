import XCTest

class kuy6_PrimorialOfANumber: XCTestCase {
	
	func numPrimoral(_ num: Int) -> Int {
		var primorial = 1
		var multiply = 1
		for i in (1 ... num) {
			primorial = getNextPrimorial(primorial)
			multiply *= primorial
		}
		return multiply
	}
	
	func getNextPrimorial(_ num: Int) -> Int {
		if num < 2 {
			return 2
		} else if num == 2 {
			return 3
		} else if num >= 3 && num < 5 {
			return 5
		} else if num >= 5 && num < 7 {
			return 7
		}
		
		var next = num
		while true {
			next = next + 1
			if next % 2 != 0 &&
				   next % 3 != 0 &&
				   next % 5 != 0 &&
				   next % 7 != 0 {
				return next
			}
		}
	}
	
	func testCheckSmallValues() {
		XCTAssertEqual(numPrimoral(3), 30);
		XCTAssertEqual(numPrimoral(4), 210);
		XCTAssertEqual(numPrimoral(5), 2310);
	}
	
	func testCheckLargerValues() {
		XCTAssertEqual(numPrimoral(8), 9699690);
		XCTAssertEqual(numPrimoral(9), 223092870);
	}
	
}
